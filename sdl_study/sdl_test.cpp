#include <iostream>
#ifdef __cplusplus
extern "C" {
#endif
#include <SDL2/SDL.h>
#include <libavcodec/avcodec.h>
#include <libavformat/avformat.h>
#include <libavutil/imgutils.h>
#include <libswscale/swscale.h>
#ifdef __cplusplus
}
#endif

int fresh(void *data){
  while(true){
    SDL_Event event;
    event.type = SDL_PEEKEVENT;
    SDL_PushEvent(&event);
    SDL_Delay(40);
  }
}
int main(int argc, char *argv[]) {
  if (argc != 2) {
      std::cout << "Usage : player <input>" << std::endl;
    return -1;
  }
  av_register_all();
  const char *input = argv[1];
  AVFormatContext *ifmt_ctx = NULL;
  if (avformat_open_input(&ifmt_ctx, argv[1], NULL, NULL)!= 0) {
    std::cout << "fail to open input " << std::endl;
    return -1;
  }
  if (avformat_find_stream_info(ifmt_ctx, NULL) < 0) {
    std::cout << "fail to find stream info" << std::endl;
    return -1;
  }
  //将音视频信息输出到控制台
  av_dump_format(ifmt_ctx, 0, argv[1], 0);
//找到视频流
  int video_stream_index = -1;
  for (int i = 0; i < ifmt_ctx->nb_streams; ++i) {
    if (ifmt_ctx->streams[i]->codec->codec_type == AVMEDIA_TYPE_VIDEO) {
      video_stream_index = i;
      break;
    }
  }
  if (video_stream_index == -1) {
    std::cout << "fail to find video stream" << std::endl;
    return -1;
  }
  AVCodecContext *pCodecCtx = ifmt_ctx->streams[video_stream_index]->codec;
  AVCodec *pCodec = avcodec_find_decoder(pCodecCtx->codec_id);
  if (pCodec == NULL) {
    std::cout << "fail to find the codec" << std::endl;
    return -1;
  }
  if (avcodec_open2(pCodecCtx, pCodec, NULL) < 0) {
    std::cout << " fail to open codec " << std::endl;
    return -1;
  }
  //初始化转换参数
  AVFrame *pframe = av_frame_alloc();
  AVFrame *pframeRGB = av_frame_alloc();
  uint8_t *out_buff = (uint8_t *)av_malloc(av_image_get_buffer_size(
      AV_PIX_FMT_RGB24, pCodecCtx->width, pCodecCtx->height, 1));
  av_image_fill_arrays(pframeRGB->data, pframeRGB->linesize, out_buff,
                       AV_PIX_FMT_RGB24, pCodecCtx->width, pCodecCtx->height,
                       1);

  SwsContext *pSwsCtx = sws_alloc_context();
  pSwsCtx = sws_getContext(
      pCodecCtx->width, pCodecCtx->height, pCodecCtx->pix_fmt, pCodecCtx->width,
      pCodecCtx->height, AV_PIX_FMT_RGB24, SWS_BICUBIC, NULL, NULL, NULL);
    //初始化SDL
    if(SDL_Init(SDL_INIT_EVERYTHING)){
        std::cout << "fail to init sdl" << SDL_GetError() << std::endl;
        return -1;
    }
    SDL_Window *p_window = SDL_CreateWindow("Player",SDL_WINDOWPOS_UNDEFINED,SDL_WINDOWPOS_UNDEFINED,pCodecCtx->width,pCodecCtx->height,SDL_WINDOW_RESIZABLE);
    if (p_window  == NULL){
        std::cout << "fail to create SDL window " <<SDL_GetError()  << std::endl;
        return -1;
    }
    SDL_Renderer *p_renderer  = SDL_CreateRenderer(p_window,0,-1);
    if (p_renderer  == NULL){
        std::cout << "fail to create SDL render " << SDL_GetError() << std::endl;
        return -1;
    }
    SDL_Rect rect;

    rect.x = 0;
    rect.y = 0;
    rect.w = pCodecCtx->width;
    rect.h = pCodecCtx->height;

    SDL_Texture *p_texture = SDL_CreateTexture(p_renderer,SDL_PIXELFORMAT_RGB24,SDL_TEXTUREACCESS_STREAMING,pCodecCtx->width,pCodecCtx->height);

  //读取数据
  std::cout << pCodecCtx->width << pCodecCtx->height << std::endl;
  AVPacket *pkt = av_packet_alloc();
  av_init_packet(pkt);
  int got_frame = -1;
  //SDL 线程播放
  SDL_Thread *p_thread = SDL_CreateThread(fresh,NULL,NULL);
  while (true) {
    SDL_Event event;
    SDL_WaitEvent(&event);
    if (event.type == SDL_PEEKEVENT) {
      if (av_read_frame(ifmt_ctx, pkt) >= 0) {
        if (pkt->stream_index == video_stream_index) {
          int ret = avcodec_decode_video2(pCodecCtx, pframe, &got_frame, pkt);
          if (ret < 0) {
            return -1;
          }
          if (got_frame > 0) {
            sws_scale(pSwsCtx, (const uint8_t *const *)pframe->data,
                      pframe->linesize, 0, pCodecCtx->height, pframeRGB->data,
                      pframeRGB->linesize);

            SDL_UpdateTexture(p_texture, &rect, pframeRGB->data[0],
                              pframeRGB->linesize[0]);

            SDL_RenderClear(p_renderer);
            SDL_RenderCopy(p_renderer, p_texture, NULL, &rect);
            SDL_RenderPresent(p_renderer);

          }
          av_packet_unref(pkt);
        }
      }
    }else if (event.type == SDL_QUIT){
      break;
    }
  }
  

  SDL_DestroyTexture(p_texture);
  SDL_DestroyWindow(p_window);
  SDL_DestroyRenderer(p_renderer);
  SDL_Quit();
  av_packet_free(&pkt);
  sws_freeContext(pSwsCtx);
  av_frame_free(&pframe);
  av_frame_free(&pframeRGB);
  avformat_close_input(&ifmt_ctx);
  return 0;
}


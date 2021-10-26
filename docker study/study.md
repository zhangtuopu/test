# docker

1. docker run ubuntu /bin/echo "hello world" (docker echo)
2. docker run ubuntu -it /bin/bash (docker 命令行)
3. exit 退出docker
4. docker run -d ubuntu /bin/sh "while true; do echo hello world; sleep 1; done"
5. docker ps 查看运行
6. docker logs ID
7. docker stop 停止
8. docker exec -it ID /bin/bash
9. docker export/import rmi images.
10. docker rm -f 容器
11. docker container prune 清除所有的停止状态容器
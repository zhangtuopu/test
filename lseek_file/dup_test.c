#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<errno.h>
int main(int argc,char * argv[])
{
	int fd=open(argv[1],O_RDWR);
	int newfd=dup(fd);
	char buf[1024];
	memset(buf,0x00,sizeof(buf));
	write(fd,"hello world",strlen("hello world"));
	lseek(fd,0,SEEK_SET);
	read(newfd,buf,sizeof(buf));
	printf("%s\n",buf);


	close(fd);
	close(newfd);
	return 0;
		
}

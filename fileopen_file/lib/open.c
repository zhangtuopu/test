#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/stat.h>
#include<fcntl.h>
#include "head.h"
int open_myfile(char *file)
{
	int fd=open(file, O_RDWR | O_CREAT,0777);
	if (fd<0)
	{
		perror("open error");
		return -1;
	}
	write(fd,"hello world",strlen("hello world"));
	
	lseek(fd,0,SEEK_SET);
	
	
	char buf[1024];
	memset(buf,0x00,sizeof(buf));
	int n=read(fd,buf,sizeof(buf));
	printf("n==[%d],buf==[%s]\n",n,buf);
	close(fd);
	
	return 0;
}

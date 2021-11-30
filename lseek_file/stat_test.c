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

	struct stat st;

	stat(argv[1],&st);

	if((st.st_mode & S_IFMT)==S_IFREG)
	{
		printf("普通文件\n");
	}
	else if ((st.st_mode &S_IFMT)==S_IFDIR)
	{
		printf("目录文件\n");
	}
	else if ((st.st_mode & S_IFMT)==S_IFLNK)
	{
		printf("连接文件\n");
	}

	return 0;	
}

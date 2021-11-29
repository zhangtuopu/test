#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "head.h"

int main()
{
	int i=open_myfile("test.log");
	int c=add(10,20);
	printf("add results: [%d]\n",c);
	return 0;
}

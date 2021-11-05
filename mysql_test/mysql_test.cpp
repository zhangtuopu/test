#include<iostream>
#include<stdio.h>
#include<mysql/mysql.h>
using namespace std;
int main()
{
	MYSQL connect;
	int res;
	mysql_init(&connect);

	if(mysql_real_connect(&connect,"localhost","root","123","test",0,NULL,CLIENT_FOUND_ROWS))
	{
		cout<<"connect success"<<endl;
		res=mysql_query(&connect,"insert into test values('user','123456')");
		if (res)
		{
			cout<<"error"<<endl;
		}
		else
		{
			cout<<"OK"<<endl;
		}
		mysql_close(&connect);
	}
	else
	{
		cout<<"connect failed"<<endl;
	}
	return 0;
}

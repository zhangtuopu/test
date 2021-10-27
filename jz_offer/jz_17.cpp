#include<iostream>
#include<vector>
#include<cmath>
#include<numeric>
// 打印从1到最大n位数

int main()
{
	int n=1;
	std::vector<int> v_num(std::pow(10,n)-1);
	std::iota(begin(v_num),end(v_num),1);
	for(auto i:v_num)
	{
		std::cout<<i<<std::endl;
	}
	return 0;

}

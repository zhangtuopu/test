#include<iostream>
#include<regex>
#include<string>
int main()
{
	std::string qq;
	std::cin>>qq;
	std::regex reg("[1-9]\\d{4,11}");
	bool ret=std::regex_match(qq,reg);
	std::cout<<(ret ? "valid" :"invalid")<<std::endl;
	return 0;
}

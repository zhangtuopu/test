#include<iostream>
#include<vector>
using namespace std;

int num(vector<int> &vec, int target)
{
	int n=vec.size();
	int l=0,h=n;
	int m=0;
	while(l<h)
	{
		m=l+(h-l)/2;
		if(vec[m]==target)
		{
			return m;
		}
		else if(vec[m]<target)
		{
			l=l+1;
		}
		else
		{
			h=h-1;
		}
	}
	return l;
}

int main()
{
	vector<int> vec={1,2,3,5};
	int target=4;
	int n=num(vec,target);
	cout<<n<<endl;
	return 0;
}

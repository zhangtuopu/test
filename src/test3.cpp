#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;

int main()
{
	vector<vector<int>> pp(4);
	pp[0].push_back(1);
	pp[0].push_back(2);
	pp[1].push_back(1);
	pp[1].push_back(3);
	pp[2].push_back(2);
	pp[2].push_back(2);
	pp[3].push_back(2);
	pp[3].push_back(3);
	
	sort(pp.begin(),pp.end(),[](vector<int> a,vector<int> b){ return (a[0] < b[0] || a[0]==b[0] && a[1]>b[1] ); });
	for(int i=0;i<pp.size();i++){
		for(int j=0;j<pp[i].size();j++){
			cout<<pp[i][j]<<" ";
		}
		cout<<endl;
	}
	return 0;
}

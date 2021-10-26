#include<iostream>
#include<vector>
#include<Eigen/Dense>
using namespace std;
int main()
{
	vector<int> nextVisit({0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1});
	long n=nextVisit.size();
        long M=1e9+7;
	vector<long long> dp(n, 0);
        // init
        dp[0] = 0;
	int i;
        for(i=1; i<n; i++){
            dp[i] = (2*dp[i-1]+M- dp[nextVisit[i-1]] + 2) % M;
        }
	cout<<dp[i-1]<<endl;
	Eigen::MatrixXd m(2,2);
	m(0,0)=0;
	m(0,1)=1;
	m(1,0)=2;
	m(1,1)=3;
	cout<<m<<endl;
        return 0;


}

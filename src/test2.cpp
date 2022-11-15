#include <iostream>
#include <string>
#include <vector>
using namespace std;
int main()
{
	vector<int> a;
	string str;
	getline(cin, str);
	int temp = 0;
	for (int i = 0; i != str.size(); ++i)
	{
		if (isdigit(str[i]))
		{
			temp = temp * 10 + (str[i] - 48);
		}

		else
		{
			a.push_back(temp);
			temp = 0;
		}
		if (i == (str.size() - 1))
		{
			a.push_back(temp);
		}
	}
	vector<vector<int>> vec1(a[0]);
	vector<vector<int>> vec2(a[1]);
	for (int i = 0; i < a[0]; ++i)
	{
		string temp;
		getline(cin, temp);
		for (int j = 0; j != temp.size(); ++j)
		{
			if (isdigit(temp[j]))
			{
				int ss = temp[j] - 48;
				vec1[i].push_back(ss);
			}
		}
	}
	int k = 0;
	for (int i = 0; i < a[0]; i++)
	{
		for (int j = 0; j < a[0]; j++)
		{
			for (int m = 0; m < a[1]; m++)
			{
				vec2[k].push_back(vec1[i][j]);
			}
		}
		k += 1;
	}
	for (int i = 0; i < a[1]; i++)
	{
		for (int k = 0; k < a[1]; k++)
		{
			for (int j = 0; j < a[1] * a[0]; j++)
			{
				cout << vec2[i][j] << ' ';
			}
			cout << endl;
		}
	}
	return 0;
}

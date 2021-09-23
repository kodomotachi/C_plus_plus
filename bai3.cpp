#include <bits/stdc++.h>

using namespace std;

const int N = 1e5;

int main()
{
	cin.tie(0)->sync_with_stdio(0);
	string s = "";
	vector<int> arr[N];
	while (s != "END")
	{
		cin >> s;
		if (s == "NEW")
		{
			int i, j;
			cin >> i >> j;
			arr[i].push_back(j);
			arr[j].push_back(i);
		}
		else if (s == "ADD")
		{
			
		}
	}
	return 0;
}
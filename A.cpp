#include <bits/stdc++.h>

using namespace std;

int difference(int *p, int n);
int check(vector <int> &p, int n);

int main()
{
	cin.tie(0) -> sync_with_stdio(0);
	int n, arr[100000];
	cin >> n;
	for (int i = 0; i< n; i++)
	{
		cin >> arr[i];
	}
	cout << difference(arr, n);
	return 0;
}

int check (vector <int> &p, int n)
{
	for (int i = 0; i < p.size(); i++)
	{
		if (n == p[i])
		{
			return 1;
		}
	}
	return 0;
}

int difference (int *p, int n)
{
	vector<int> arr;
	for(int i = 0; i < n; i++)
	{
		if (check(arr, p[i]) == 0)
		{
			arr.push_back(p[i]);
		} 
	}
	return arr.size();
}
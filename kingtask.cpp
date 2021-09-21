#include <bits/stdc++.h>

using namespace std;

void swap1(vector<int> &a, int n)
{
	for (int i = 0; i < n; i++)
	{
		swap(a[2 * i], a[2 * i + 1]);
	}
}

void swap2(vector<int> &a, int n)
{
	for (int i = 0; i < n; i++)
	{
		swap(a[i], a[n + i]);
	}
}

int main()
{
	cin.tie(0) -> sync_with_stdio(0);
	int n;
	cin >> n;
	vector<int> a(2 * n), b(2 * n);
	for (int i = 0; i < 2*n; i++)
	{
		cin >> a[i];
		b[i] = a[i];
	}
	for (int i = 0; i <= n; i++)
	{
		bool f0 = is_sorted(a.begin(), a.end());
		bool f1 = is_sorted(b.begin(), b.end());
		if (f0 || f1)
			return cout << i, 0;
		if (i % 2 == 1)
		{
			swap1(a, n);
			swap2(b, n);
		}
		else	
		{
			swap2(a, n);
			swap1(b, n);
		}
	}
	cout << -1;
	return 0;
}
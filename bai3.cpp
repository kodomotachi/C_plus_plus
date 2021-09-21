#include <bits/stdc++.h>

using namespace std;

bool check(int n)
{
	for (int i = 2; i <= round(sqrt(n)); i++)
	{
		if (n%i == 0)
			return false;
	}
	return true;
}

int main()
{
	cin.tie(0)->sync_with_stdio(0);
	int t;
	cin >> t;
	for (int i = 0; i < t; i++)
	{
		int n;
		cin >> n;
		if (check(n))
			return cout << 1 << " " << n - 1 << "\n";
		else
		{
			int min = 0;
			for (int i = 2; i <= floor(n/2); i++)
			{
				if (n%i == 0)
				{
					min = i;
					break;
				}
			}
			
		}
	}
	return 0;
}
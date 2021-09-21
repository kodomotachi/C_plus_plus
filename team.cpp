#include <bits/stdc++.h>

using namespace std;

int main()
{
	cin.tie(0)->sync_with_stdio(0);
	int n;
	cin >> n;
	int a, b, c, count = 0;
	for (int i = 0; i < n; i++)
	{
		cin >> a >> b >> c;
		if (a + b + c >= 2)
			count++;
	}
	cout << count;
	return 0;
}
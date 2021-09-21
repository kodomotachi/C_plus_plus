#include <bits/stdc++.h>

using namespace std;

int main()
{
	cin.tie(0)->sync_with_stdio(0);
	int n;
	cin >> n;
	for (int i = 0; i < n; i++)
	{
		string s;
		cin >> s;
		if (s.size() <= 10)
			cout << s << '\n';
		else
			cout << s[0] << s.size() - 2 << s.back() << '\n';   //endl chay cham hon \n
	}
	return 0;
}
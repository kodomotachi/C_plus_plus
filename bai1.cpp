#include <bits/stdc++.h>

#define ll long long

using namespace std;

int main()
{
	cin.tie(0)->sync_with_stdio(0);
	int n;
	ll result, id;
	cin >> n >> result >> id;
	string perm;
	for (int i = 'a'; i < 'a' + n; i++)
	{
		perm += i;
	}
	string res;
	for (int i = 0; i < result ; i++)
	{
		res += perm;
		next_permutation(perm.begin(), perm.end());
	}
	cout << res << "\n" << res[id - 1];
	return 0;
}
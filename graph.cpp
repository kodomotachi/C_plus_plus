#include <bits/stdc++.h>

using namespace std;

const int N = 2e5;

vector<int> graph[N];

int main()
{
	int n;
	cin >> n;
	int u, v;
	for (int i = 0; i < n - 1; i++)
	{
		cin >> u >> v;
		graph[u].push_back(v);
		graph[v].push_back(u);
	}
	int root = -1;
	vector<int> children;
	for (int i = 1; i <= n; i++)
	{
		if (graph[i].size() > 2)
		{
			if (root == -1)
				root = i;
			else
			{
				cout << "No";
				return 0;
			}
		}
		else if (graph[i].size() == 1)
		{
			children.push_back(i);
		}
	}
	cout << "Yes\n";
	if (root == -1)
	{
		cout << "1\n";
		cout << children[0] << ' ' << children[1];
	}
	else
	{
		cout << children.size() << '\n';
		for (int i : children)
		{
			cout << root << ' ' << i << '\n';
		}
	}
	return 0;
}
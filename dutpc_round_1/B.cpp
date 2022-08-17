#include <iostream>

using namespace std;

int main()
{
	int arr[1000][1000], n, m, i, j, arr_b[1000][1000];
	cin >> n >> m;
	for (i = 0; i < n; i++)
	{
		for (j = 0; j < m; j++)
		{
			cin >> arr[i][j];
		}
	}
	int count = 0;
	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n; j++)
		{
			if (arr[i][j] == 2)
			{
				arr_b[i][j] = 1;
			}
		}
	}
	count++;
	for (i = )
	return 0;
}

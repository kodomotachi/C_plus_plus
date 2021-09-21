#include <iostream>

using namespace std;

int main()
{
	long long arr[10000], i, j, k, n, count = 0;
	cin >> n;
	for (i = 0; i < n; i++)
	{
		cin >> arr[i];
	}
	for (i = 0; i < n - 2; i++)
	{
		for (j = i + 1; j < n- 1; j++)
		{
			for (k = j + 1; k < n; k++)
			{
				if ((arr[i] + arr[j] + arr[k])%2 == 1)
				{
					count++;
				}
			}
		}
	}
	cout << count;
	return 0;
}

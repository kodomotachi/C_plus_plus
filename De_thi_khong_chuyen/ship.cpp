#include <iostream>
#include <cmath>

using namespace std;

int main()
{
	long long arr[100000], i, j, n, min;
	cin >> n;
	for (i = 0; i < n; i++)
	{
		cin >> arr[i];
	}
	min = arr[0];
	for (i = 0; i < n; i++)
	{
		if (arr[i] > min)
		{
			min = arr[i];
		}
	}
	for (i = 0; i < n - 1; i++)
	{
		for (j = i + 1; j < n; j++)
		{
			if (abs(arr[i] - arr[j]) < min)
			{
				min = abs(arr[i] - arr[j]);
			}
		}
	}
	cout << min;
	return 0;
}

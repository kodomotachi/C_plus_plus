#include <iostream>

using namespace std;

int main()
{
	int arr[1000], n, i, count = 0;
	cin >> n;
	for (i = 0; i < n; i++)
	{
		cin >> arr[i];
	}
	int j;
	for (i = 0; i < n - 1; i++)
	{
		for (j = i + 1; j < n; j++)
		{
			if ((arr[i] + arr[j])%2 == 0)
			{
				count++;
			}
		}
	}
	cout << count;
	return 0;
}

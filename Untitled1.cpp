#include <iostream>

using namespace std;

int main()
{
	int n, arr[100], i;
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
			int tmp;
			if (arr[i] < arr[j]) 
			{
				tmp = arr[i];
				arr[i] = arr[j];
				arr[j] = tmp;
			}
		}
	}
	int s = 0, locate = 0;
	while (s != n) 
	{
		
	}
	return 0;
}
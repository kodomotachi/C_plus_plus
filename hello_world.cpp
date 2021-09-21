#include <bits/stdc++.h>

using namespace std;

int main()
{
     cin.tie(0) -> sync_with_stdio(0);
     int n;
     cin >> n;
     vector<int> arr;
     for (int i = 0; i < n; i++)
     {
          cin >> arr[i];
     }
     for (int i : arr)
     {
          cout << i << " ";
     }
     return 0;
}
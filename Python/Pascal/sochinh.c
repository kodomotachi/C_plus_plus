#include <stdio.h>

int main()
{
     long arr[600000], location[600000], count[600000], locate, i, j, count;
     double dem[600000];
     char s;
     for (i = 0; i < 600000; i++)
     {
          scanf("%ld%s", &arr[i], &s);
          if (s = "  ")                          /* Nhap 2 dau cach cung dong de ket thuc chuong trinh */
          {
               locate = i;
               break;
          }
     }
     for (i = 0; i < n; i++)
     {
          location[i] = 0;
          count[i] = 0;
     }
     j = 0;
     while (count < locate)
     {
          for (i = 0; i < n; i++)
          {
               if (location[j] != arr[i])
               {
                    if (count == 0)
                    {
                         location[j] = arr[i];
                         break;
                    }
                    else
                    {
                         j++;
                         count[j] = arr[i];
                         break;
                    }
               }
          }
          for (i =  0; i < n; i++)
          {
               if (location[j] == arr[i])
               {
                    count[j]++;
               }
          }
     }
     return 0;
}
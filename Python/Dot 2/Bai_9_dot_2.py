from math import *
n = int(input('Nhap so nguyen n > 0: '))
j = 0
for i in range(2, round(sqrt(n))):
    if n%i == 0:
       j = 1
if j == 0:
    print('{0} la so nguyen to'.format(n))
else:
    print('{0} khong phai la so nguyen to'.format(n))
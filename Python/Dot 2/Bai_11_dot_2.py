from math import *
n = int(input('Nhap so nguyen duong n > 0: '))
k = n
m = 2
s = ''
while n != 0:
    j = 0
    for i in range(2, m):
        if m%i == 0:
            j = 1
    if  j == 0:
        n -= 1
        if n != 0:
            s += str(m) + ', '
            m += 1
        else:
            s += str(m)
    else:
        m += 1
print('Co {0} so nguyen to dau tien: {1}'.format(k, s))
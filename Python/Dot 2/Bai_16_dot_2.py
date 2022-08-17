from math import *
m = int(input('Nhap so thu nhat: '))
n = int(input('Nhap so thu hai: '))
a = ''
count = 0
for i in range(m, n + 1):
    s = sqrt(i)
    s = round(s, 2)
    if s*s == i:
        a += str(i) + ' '
        count += 1
print('Ket qua: ',a)

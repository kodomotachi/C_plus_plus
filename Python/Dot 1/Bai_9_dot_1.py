from time import *
from math import *
print('Day la chuong trinh giai phuong trinh bac 2')
sleep(3)
a = int(input('Nhap he so thu nhat: '))
b = int(input('Nhap he so thu hai: '))
c = int(input('Nhap he so thu ba'))
print('\nPhuong trinh ban vua moi nhap: ',a,'x^2 + ',b,'x + ',c,' = 0')
print('\nKet qua: ')
delta = b*b - 4*a*c
if (delta > 0):
    delta = sqrt(delta)
    print('x1 = ', (-b + delta)/(2*a))
    print('x2 = ', (-b - delta)/(2*a))
elif (delta == 0):
    print('x = ', -b/(2*a))
else:
    print('Vo nghiem')
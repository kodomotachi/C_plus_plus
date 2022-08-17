from time import *
print('Chuong trinh giai phuong trinh bac nhat')
sleep(3)
a = int(input('Nhap he so thu nhat: '))
b = int(input('Nhap he so thu hai: '))
print('\nPhuong trinh ban vua moi nhap la: {0}x + {1} = 0'.format(a, b))
if (a != 0) and (b == 0):
    print('\nKet qua: 0')
elif (a == 0) and (b == 0):
    print('\nKet qua: Vo so')
else:
    print('\nKet qua: {0}'.format(-b/a))
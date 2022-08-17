a = int(input('Nhap so thu nhat: '))
b = int(input('Nhap so thu hai: '))
m = a*b
while a != b:
    if a > b:
        a -= b
    else:
        b -= a
print('Uoc chung lon nhat: {0}'.format(a))
print('Boi chung nho nhat: {0}'.format(round(m/a,0)))
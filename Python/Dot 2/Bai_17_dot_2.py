a = int(input('Nhap so thu nhat: '))
b = int(input('Nhap so thu hai: '))
m = a
n = b
while a != b:
    if a > b:
        a -= b
    else:
        b -= a
if a == 1:
    print("{0} va {1} la hai so nguyen to cung nhau.".format(m, n))
else:
    print("{0} va {1} la hai so nguyen to khong cung nhau".format(m, n))
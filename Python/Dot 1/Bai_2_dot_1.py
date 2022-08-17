n = int(input("Ban hay nhap so: "))
if (n > 0):
    print('\nSo ',n,' la so duong ,')
elif (n < 0):
    print('\nSo ',n,' la so am ,')
else:
    print('So ',n,' khong phai la so chan, cung khong phai la so le')
if (n%2 == 0 and n != 0):
    print('chan')
elif (n%2 == 1 and n != 0):
    print('le')

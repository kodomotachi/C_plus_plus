a = int(input('Nhap so thu nhat: '))
b = int(input('Nhap so thu hai: '))
if (a < b):
    print('{0} nho hon {1}'.format(a, b))
elif (a > b):
    print('{0} lon hon {1}'.format(a, b))
else:
    print('{0} bang {1}'.format(a, b))
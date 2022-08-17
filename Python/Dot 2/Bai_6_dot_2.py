n = int(input('Nhap so duong n > 0: '))
s = 0
for i in range (0, n + 1):
    if (i%7 == 0):
        s += i
print('\nTong la: ',s)
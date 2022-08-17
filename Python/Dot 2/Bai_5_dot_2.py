n = int(input('Nhap so duong: '))
s = 0
gt = 1
for i in range(1, n + 1):
    for j in range(1, i + 1):
        gt *= j
    s += gt
    gt = 1
print('\nTong la: {0}'.format(s))
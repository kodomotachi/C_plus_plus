n = int(input('Nhap so nguyen duong n > 0: '))
f0 = 1
f1 = 1
for i in range(1, n):
    fn = f1 + f0
    f0 = f1
    f1 = fn
print('So fibonacci thu {0}: {1}'.format(n, fn))
n = 0
while n <= 0:
    n = int(input('Nhap so nguyen duong: '))
if n == 1:
    print('Ket qua: 1')
else:
    s = 1
    for i in range(1, n + 1):
        s *= i
    print('Ket qua: ',s)
n = int(input('Nhap so nguyen duong: '))
s = 0
while n > 0:
    s += round(n) % 10
    n = n/10 - 0.5
print('Ket qua: ',s)
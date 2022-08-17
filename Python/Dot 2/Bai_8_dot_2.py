n = int(input('Nhap so tu nhien n > 0: '))
s = ''
count = 0
for i in range (1, n + 1):
    if n%i == 0:
        s += ' ' + str(i)
        count += 1
print(s)
print('So uoc trong {0}: {1}'.format(n, count))

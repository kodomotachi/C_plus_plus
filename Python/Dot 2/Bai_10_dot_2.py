n = int(input('Nhap so nguyen n > 0: '))
i = 2
s = ''
m = n
while n != 1:
    if n%i == 0:
        n /= i
        s += str(i) + ' '
        if n != 1:
            s += 'x '
    else:
        i += 1
print('{0} = {1}'.format(m, s))
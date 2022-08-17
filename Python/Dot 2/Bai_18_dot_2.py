from math import *
a = float(input('Nhap do chinh xac: '))
k = 0
s = 0
signal = -1
while 1/(2*k + 1) >= a:
    tg = 1/(2*k + 1)
    s += -1*signal*tg
    signal *= -1
    k += 1
print('PI = {0}'.format(4*s))
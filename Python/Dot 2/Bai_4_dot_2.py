n = int(input('Nhap mot so tu nhien > 0: '))
print('\nKet qua:')
s = 0
s1 = s2 = 0
for i in range(n + 1):
     s += i
for i in range(n + 1):
     if (i%2 == 1):
          s1 += i
     if (i%2 == 0):
          s2 += i
print(s,'\n',s1,'\n',s2)
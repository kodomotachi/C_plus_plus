a = int(input('Nhap canh thu nhat: '))
b = int(input('Nhap canh thu hai: '))
c = int(input('Nhap canh thu ba: '))
if (a*a + b*b == c*c or b*b + c*c == a*a or c*c + a*a == b*b) and (a != b and b != c or c != a):
    print('Tam giac vuong')
elif (a*a + b*b == c*c or b*b + c*c == a*a or c*c + a*a == b*b) and (a == b or b == c or c == a):
    print('Tam giac vuong can')
elif (a == b and b == c and c == a):
    print('Tam giac deu')
elif (a == b or b == c or c == a):
    print('Tam giac can')
else:
    print('Tam giac thuong')
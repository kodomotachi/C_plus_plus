n = int(input('Nhap so de kiem tra so thuan nghich: '))
str1 = str(n)
str2 = str1[::-1]
if str1 == str2:
    print('{0} la so thuan nghich'.format(n))
else:
    print('{0} khong phai la so thuan nghich'.format(n))
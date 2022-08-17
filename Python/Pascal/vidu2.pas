uses crt;
var n, i: integer;
    s: string;
    a: array [1..100] of integer;
begin
     clrscr;
     write('Nhap so luong phan tu: ');
     readln(n);
     for i:= 1 to 100 do
          begin
               read(a[i], s);
               if (s = ' ') then               \\ Nhap so roi nhap 1 dau cach cung dong
                    continue
               else if (s = '  ') then          \\ Nhap so roi nhap 2 dau cach cung dong de ket thuc chuong trinh
                    break;
          end;
     readln
end.
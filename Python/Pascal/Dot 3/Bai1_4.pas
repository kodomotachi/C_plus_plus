uses crt;
var a: array[1..100] of integer;
    n, i: integer;
begin
     clrscr;
     write('Nhap so luong phan tu: ');
     readln(n);
     for i:= 1 to n do
          begin
               write('a[',i,'] = ');
               readln(a[i]);
          end;
     
     readkey
end;
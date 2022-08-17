program bai5;
uses crt;
var n, s: integer;
begin
   clrscr;
   s:= 0;
   repeat
      write('Nhap n: ');
      readln(n);
      s:= s + n;
   until n = 0;
   write('Tong la: ',s);
   readkey
end.


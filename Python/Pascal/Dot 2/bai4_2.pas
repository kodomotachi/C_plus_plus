program bai4_2;
uses crt;
var a: array [1..100] of integer;
    b: array [1..100] of integer;
    n, i: integer;
begin
   clrscr;
   write('Nhap so phan tu: ');
   readln(n);
   for i:= 1 to n do
      begin
         write('a[',i,'] = ');
         readln(a[i]);
      end;
   for i:= 1 to n do
      begin
         write('b[',i,'] = ');
         readln(b[i]);
      end;
   write('Day sau khi trao doi: ');
   for i:= 1 to n do
      begin
         write(a[i],' ',b[i],' ');
      end;
   readln
end.




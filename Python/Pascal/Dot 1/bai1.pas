program bai1;
uses crt;
var n, i: integer;
begin
   clrscr;
   write('Nhap n: ');
   readln(n);
   while (n < 100) or (n > 999) do
      begin
         write('Nhap lai n hop le: ');
         readln(n);
      end;
   while (n > 0) do
     begin
        i:= n mod 10;
        write(i,' ');
        n:= n div 10;
     end;
   readkey
end.
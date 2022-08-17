program bai3;
uses crt;
var n, i, j, count: integer;
begin
   clrscr;
   write('Nhap n: ');
   readln(n);
   write('  ');
   for i:= 1 to n do
      write(i:4);
   writeln;
   count:= 0;
   for i:= 1 to n do
      begin
         count:= 0;
         for j:= 0 to n do
            begin
               if (count = 0) then
                  write(j + 1:2)
               else if (count > 0) then
                  if (i*j < 10) then
                     write(i*j:4)
                  else if (i*j < 100) and (i*j >= 10) then
                     write(i*j:4)
                  else if (i*j < 1000) and (i*j >= 100) then
                     write(i*j:4);
               count:= count + 1;
            end;
         writeln;
      end;
   readkey
end.


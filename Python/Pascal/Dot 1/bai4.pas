program bai4;
uses crt;
var n, i, count, j: integer;
begin
   clrscr;
   write('Nhap n (2 -> 9): ');
   readln(n);
   while (n < 2) or (n > 9) do
      begin
         write('Nhap lai n (n khong hop le): ');
         readln(n);
      end;
   for i:= 1 to n do
      begin
         count:= 0;
         for j:= 0 to n do
            begin
               if (count = 0) then
                  write(j + 1: 4)
               else if (count > 0) then
                  write(i*j:4);
               count:= count + 1;
            end;
         writeln;
      end;
   readkey
end.

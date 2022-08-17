program bai1_2;
uses crt;
var count, n: integer;
begin
   clrscr;
   n:= 0;
   count:= 0;
   while (n <= 0) do
      begin
         write('Nhap so ly khach mua: ');
         readln(n);
      end;
   while (n > 1) do
      begin
         if (n >= 5) then
            begin
               n:= n - 5;
               count:= count + 3;
            end
         else if (n >= 2) then
            begin
               n:= n - 2;
               count:= count + 1;
            end;
      end;
   writeln('So ly duoc tang: ',count);
   readkey
end.
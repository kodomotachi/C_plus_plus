program bai2_2;
uses crt;
var n, count: integer;
    s: longint;
begin
   clrscr;
   n:= 0;
   while (n <= 0) or (n > 1000) do
      begin
         write('Nhap so kW khach hang su dung: ');
         readln(n);
      end;
   if (0 <= n) and (n <= 100) then
      begin
         s:= n*1000;
      end
   else if (100 < n) and (n <= 200) then
      begin
         n:= n - 100;
         s:= 100*1000;
         s:= s + n*1500;
      end
   else if (200 < n) and (n <= 250) then
      begin
         n:= n - 100;
         s:= 100*1000;
         n:= n - 100;
         s:= s + 100*1500;
         s:= s + n*2000;
      end
   else if (n > 250) and (n <= 1000) then
      begin
         n:= n - 100;
         s:= 100*1000;
         n:= n - 100;
         s:= s + 100*1500;
         n:= n - 50;
         s:= s + 50*2000;
         s:= s + n*2500;
      end;
   write('So tien phai tra: ',s);
   readkey
end.
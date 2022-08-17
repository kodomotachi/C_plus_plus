program bai6;
uses crt;
var a: array[1..100] of integer;
    n, j, i, max, max2, tg: integer;
begin
   clrscr;
   write('Nhap n: ');
   readln(n);
   for i:= 1 to n do
      begin
         write('a[',i,'] = ');
         readln(a[i]);
      end;
   max:= a[1];
   max2:= a[1];
   for i:= 1 to n - 1 do
      for j:= i + 1 to n do
         begin
            if (a[i] < a[j]) then
               begin
                  tg:= a[i];
                  a[i]:= a[j];
                  a[j]:= tg;
               end;
         end;
   write('MIN2 = ',a[2]);
   readkey
end.

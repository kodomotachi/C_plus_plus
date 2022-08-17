uses crt;
var a, b: array[1..100] of extended;
    count, i, m, n, x: integer;
begin
   clrscr;
   write('Nhap so duong: ');
   readln(x);
   while (count <= x) do
      begin
         if (count = 1) then
            begin
               a[1]:= 1;
               write(a[1]:15:0);
            end
         else if (count = 2) then
            begin
               b[1]:= 1;
               b[2]:= 1;
               write(b[1]:15:0,' ',b[2]:15:0);
            end
         else if (count mod 2 = 0) then
            begin
               for i:= 1 to count do
                  begin
                     if (i = 1) or (i = count) then
                        b[i]:= 1
                     else
                        b[i]:= a[i - 1] + a[i];
                  end;
               for i:= 1 to count do
                  write(b[i]:15:0,' ');
            end
         else if (count mod 2 = 1) then
            begin
               for i:= 1 to count do
                  begin
                     if (i = 1) or (i = count) then
                        a[i]:= 1
                     else
                        a[i]:= b[i - 1] + b[i];
                  end;
               for i:= 1 to count do
                  write(a[i]:15:0,' ');
            end;
         writeln;
         count:= count + 1;
      end;
   readkey
end.
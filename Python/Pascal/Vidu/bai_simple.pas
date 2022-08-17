uses crt;
var a, b: integer;
begin
     clrscr;
     write('Nhap so a, b: ');
     readln(a, b);
     while (a <> b) do
          begin
               if (a > b) then
                    a:= a - b
               else 
                    b:= b - a;
          end;
     write('UCLN: ', a);
     readln 
end.
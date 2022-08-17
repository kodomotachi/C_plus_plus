uses crt;
var a: array [1..100] of integer;
    n, m, count, i: integer;
begin
     clrscr;
     write('Nhap so phan tu: ');
     readln(n);
     for i:= 1 to n do
          begin
               write('a[',i,'] = ');
               readln(a[i]);
          end;
     count = 0;
     for i:= 1 to n do 
          begin
               if (a[i] <= a[i + 1]) then
                    begin
                         count:= count + 1;
                         if (count = 1) then
                              begin
                                   m:= i;
                              end;
                    end;
               else
                    begin
                         
                    end;
          end;
     readln;
end.
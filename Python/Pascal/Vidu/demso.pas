uses crt;
var m, n, i, count, j, bit: integer;
begin
     clrscr;
     readln(m, n);
     count:= 0;
     for i:= m to n do 
          begin
               bit:= 0;
               for j:= 2 to round(sqrt(i)) do
                    begin
                         if (i mod j = 0) then
                              bit:= 1;
                    end;     
               if (bit = 0) then
                    if (i <> 1) then
                         count:= count + 1; 
          end;
     write(count);
     readln 
end.
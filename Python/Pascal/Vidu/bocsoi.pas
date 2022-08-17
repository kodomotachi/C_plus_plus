uses crt;
var s: string;
    n, i, count: integer;
begin
     clrscr;
     readln(s);
     count:= 0;
     for i:= 1 to length(s) do 
          begin
               if (s[i] = s[i + 1]) then
                    count:= count + 1;
          end;
     write(count);
     readln 
end.
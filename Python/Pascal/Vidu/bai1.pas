uses crt;
var s: string;
    locate, n, i, s1, s2, sum: integer;
    sum_spec: real;
begin
     clrscr;
     readln(s);
     s1:= 0;
     s2:= 0;
     for i:= 1 to length(s) do 
          begin
               if ('0' <= s[i]) and (s[i] <= '9') then
                    s1:= s1*10 + (ord(s[i]) - 48)
               else
                    begin
                         locate:= i;
                         break;
                    end;
          end;
     for i:= locate + 1 to length(s) do 
          begin
               s2:= s2*10 + (ord(s[i]) - 48);
          end;
     case s[locate] of
          '+': sum:= s1+s2;
          '-': sum:= s1 - s2;
          '*': sum:= s1*s2;
          '/': sum_spec:= s1/s2;
     end;
     if (s[locate] = '/') then
          write(sum_spec:10:5)
     else
          write(sum);
     readln
end.
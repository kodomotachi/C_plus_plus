uses crt;
var n, count, i: integer;
    a, b: array[1..100] of integer;
begin
     clrscr;
     readln(n);
     count:= 0;
     a[1]:= 1;
     while (count <= n) do
          begin
               if (count = 0) then
                    write(a[1])
               else if (count = 1) then
                    begin
                         b[1]:= 1;
                         b[2]:= 1;
                         write(b[1],' ', b[2]);
                    end
               else if (count mod 2 = 0) then
                    begin
                         for i:= 1 to count + 1 do
                              begin
                                   if (i = 1) or (i = count + 1) then
                                        begin
                                             a[i]:= 1;
                                             write(a[i],' ')
                                        end
                                   else
                                        begin
                                             a[i]:= b[i - 1] + b[i];
                                             write(a[i],' ');
                                        end;
                              end;
                    end
               else if (count mod 2 = 1) then
                    begin
                         for i:= 1 to count + 1 do
                              begin
                                   if (i = 1) or (i = count + 1) then
                                        begin
                                             b[i]:= 1;
                                             write(b[i],' ');
                                        end
                                   else
                                        begin
                                             b[i]:= a[i - 1] + a[i];
                                             write(b[i],' ');
                                        end;
                              end;
                    end;
               writeln;
               count:= count + 1;
          end;
     readln 
end.
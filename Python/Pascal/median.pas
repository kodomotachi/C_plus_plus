uses crt;
var b1, b2: text;
    min, max, n, i, j, tmp, avg: longint;
    avg2, s, memory: longint;
    a, b: array [1..100] of int64;
begin
     clrscr;
     assign(b1,'median.inp');
     assign(b2,'median.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n);
     for i:= 1 to n do
          read(b1, a[i]);
     for i:= 1 to n - 1 do
          for j:= i to n do
               begin
                    if (a[i] > a[j]) then
                         begin
                              tmp:= a[i];
                              a[i]:= a[j];
                              a[j]:= tmp;
                         end;   
               end;
     if (n mod 2 = 0) then
          begin
               avg:= (n div 2);
               avg2:= avg + 1;
          end
     else
          avg:= ((n - 1) div 2) + 1;
     if (n mod 2 = 0) then
          begin
               write(b2,a[avg],' ',a[avg2]);
               for i:= 1 to n do
                    begin
                         if (i = avg) or (i = avg2) then
                              continue
                         else
                              begin
                                   if (i < avg) then
                                        b[i]:= abs(a[i] - a[avg])
                                   else if (i > avg2) then
                                        b[i - 2]:= abs(a[i] - a[avg2]);
                              end;
                    end;
               for i:= 1 to n - 3 do
                    for j:= i + 1 to n - 2 do
                         begin
                              if (b[i] > b[j]) then
                                   begin
                                        tmp:= b[i];
                                        b[i]:= b[j];
                                        b[j]:= tmp;
                                   end;
                         end; 
               for i:= 1 to n - 3 do
                    begin
                         for j:= 1 to n do
                              begin
                                   if (j = avg) or (j = avg2) then
                                        continue
                                   else if (j < avg) then
                                        begin
                                             s:= abs(a[j] - a[avg]);
                                             if (s = b[i]) then
                                                  write(b2,' ',a[j]);
                                        end
                                   else if (j > avg2) then
                                        begin
                                             s:= abs(a[j] - a[avg2]);
                                             if (s = b[i]) then
                                                  write(b2,' ',a[j]);
                                        end;
                              end;
                    end;
               write(b2,' ',a[n]);
          end
     else if (n mod 2 = 1) then
          begin
               write(b2,a[avg]);
               for i:= 1 to n do
                    if (i = avg) then
                         continue
                    else
                         begin
                              if (i < avg) then
                                   b[i]:= abs(a[i] - a[avg])
                              else if (i > avg) then
                                   b[i - 1]:= abs(a[i] - a[avg]);
                         end;
               for i:= 1 to n - 1 do
                    for j:= i + 1 to n do
                         begin
                              if (b[i] > b[j]) then 
                                   begin
                                        tmp:= b[i];
                                        b[i]:= b[j];
                                        b[j]:= tmp;
                                   end;
                         end;
               for i:= 1 to n - 1 do
                    begin
                         for j:= 1 to n do
                              begin
                                   if (j = avg) then
                                        continue
                                   else 
                                        begin
                                             s:= abs(a[j] - a[avg]);
                                             if (s = b[i]) then
                                                  begin
                                                       write(b2,' ',a[j]);
                                                  end;
                                        end;
                              end;
                    end;
               write(b2,' ',a[n]);
          end;
     close(b1);
     close(b2); 
end.
uses crt;
var s1, s2, s3, s4: string;
    a: array [1..100] of integer;
    n, i, j, kq, count, count2: integer;
begin
     clrscr;
     readln(s1);
     readln(s2);
     s3:= '';
     for i:= 1 to length(s1) do
          s3[i]:= s1[length(s1) - i + 1];
     kq:= 0;
     for i:= 1 to length(s1) do
          if (s1[i] <> s3[i]) then
               kq:= 1;
     if (kq = 0) then
          write('1')
     else
          write('0');
     count:= 1;
     for i:= 1 to length(s2) do
          if (s1[1] = s2[i]) then
               begin
                    a[count]:= i;
                    count:= count + 1;
               end;
     writeln;
     count2:= 0;
     for i:= 1 to length(s2) - length(s1) do
          begin
               s4:= '';
               count:= 1;
               for j:= i to i + length(s1) - 1 do
                    begin
                         s4[count]:= s2[j];
                         count:= count + 1;
                    end;
               kq:= 0;
               for j:= 1 to length(s1) - 1 do
                    begin
                         if (s4[j] <> s1[j]) then
                              kq:= 1;
                    end;
               if (kq = 0) then
                    count2:= count2 + 1;
          end;
     write(count2 + 1);
     readln 
end.
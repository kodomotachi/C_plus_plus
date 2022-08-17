uses crt;
var arr, b: array [1..1000] of integer;
    locate, n, i, max, max_2, j: integer;
    b1, b2: text;
begin
     clrscr;
     assign(b1,'tramchim.inp');
     assign(b2,'tramchim.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n);
     for i:= 1 to n do
          begin
               read(b1, arr[i]);
          end;
     max:= arr[1];
     for i:= 2 to n do
          begin
               if (arr[i] > max) then
                    max:= arr[i];
          end;
     for i:= 1 to max do
          b[i]:= 0;
     for i:= 1 to max do
          begin
               for j:= 1 to n do
                    if (arr[j] = i) then
                         b[i]:= b[i] + 1;
          end;
     max_2:= b[1];
     for i:= 1 to max do
          begin
               if (max_2 < b[i]) then
                    begin
                         max_2:= b[i];
                    end;
          end;
     for i:= 1 to max do 
          begin
               if (max_2 = b[i]) then
                    begin
                         locate:= i;
                         break;
                    end;
          end;
     write(b2, locate);
     close(b1);
     close(b2);
     readln 
end.
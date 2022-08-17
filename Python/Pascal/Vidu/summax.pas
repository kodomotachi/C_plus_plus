uses crt;
var b1, b2: text;
    n, i, max, m, locate, j, count: integer;
    arr, b: array [1..100] of integer;
begin
     clrscr;
     assign(b1,'summax.inp');
     assign(b2,'summax.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n, m);
     for i:= 1 to n do
          read(b1, arr[i]);
     count:= 0;
     for i:= 1 to n do
          begin
               if (i + m <= n) then
                    count:= count + 1;
          end;
     for i:= 1 to count do
          b[i]:= 0;
     for i:= 1 to count do
          for j:= i to i + m - 1 do 
               b[i]:= b[i] + arr[j];
     max:= b[1];
     for i:= 2 to count do 
          begin
               if (max < b[i]) then
                    begin
                         max:= b[i];
                         locate:= i;
                    end;
          end;
     for j:= locate to locate + m - 1 do
          begin
               write(b2, arr[j]:7);
          end;
     close(b1);
     close(b2);
     readln
end.
uses crt;
var a: array [1..100] of integer;
    b: array [1..100] of integer;
    m, n, i, s1, s2: integer;
    b1, b2: text;
begin
     clrscr;
     assign(b1,'bl3.inp');
     assign(b2,'bl3.out');
     reset(b1);
     rewrite(b2);
     readln(b1, m, n);
     for i:= 1 to m do
          readln(b1, a[i]);
     for i:= 1 to n do
          readln(b1, b[i]);
     s1:= 0;
     s2:= 0;
     for i:= 1 to n do
          begin
               if (a[i] - b[i] < 0) then
                    s1:= s1 + (a[i] - b[i])
               else if (a[i] - b[i] > 0 ) then
                    s2:= s2 + (a[i] - b[i])
               else
                    continue;
          end;
     if (s1 = 0) and (s2 <> 0) then
          write(b2, s2)
     else if (s1 <> 0) and (s2 = 0) then
          write(b2, s1)
     else if (s1 <> 0) and (s2 <> 0) then
          write(b2, s2);
     close(b1);
     close(b2);
     readln 
end.
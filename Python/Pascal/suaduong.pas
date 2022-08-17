uses crt;
var b1, b2: text;
    n, m, i, j, s, min, u, v, max: longint;
    a: array [1..100, 1..100] of longint;
begin
     clrscr;
     assign(b1,'suaduong.inp');
     assign(b2,'suaduong.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n, m);
     for i:= 1 to m do
          readln(b1, u, v, a[u,v]);
     s:= 0;
     for i:= 1 to n - 1 do
          begin
               for j:= 1 to n - 1 do
                    if (a[i,j] <> 0) then
                         begin
                              min:= a[i,j];
                              break;
                         end;
               for j:= 1 to n - 1 do
                    begin
                         if (min > a[i, j]) and (a[i, j] <> 0) then
                              min:= a[i, j];
                    end;
               s:= s + min;
          end;
     for i:= 1 to n - 1 do
          if (a[i, n] <> 0) then
               begin
                    max:= a[n, i];
                    break;
               end;
     for i:= 1 to n - 1 do
          if (max < a[i, j]) and (a[i, j] <> 0) then
               max:= a[i, j];
     s:= s + max;
     write(b2, s);
     close(b1);
     close(b2);
     readln 
end.
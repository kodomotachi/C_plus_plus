uses crt; 
var i, n, a, b, s, j, count: longint;
    b1, b2: text;
    arr: array [1..100] of longint;
begin
     clrscr;
     assign(b1,'capsodep.inp');
     assign(b2,'capsodep.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n);
     count:= 0;
     for i:= 1 to n do
          read(b1, arr[i]);
     for i:= 1 to n - 1 do
          for j:= i + 1 to n do
               begin
                    a:= arr[i];
                    b:= arr[j];
                    while (a <> b) do
                         begin
                              if (a > b) then
                                   a:= a - b
                              else
                                   b:= b - a;
                         end;
                    s:= round(sqrt(a));
                    if (s*s = a) and (a <> 1) then
                         count:= count + 1;
               end;
     write(b2, count);
     writeln(b2);
     for i:= 1 to n - 1 do
          for j:= i + 1 to n do
               begin
                    a:= arr[i];
                    b:= arr[j];
                    while (a <> b) do
                         begin
                              if (a > b) then
                                   a:= a - b
                              else
                                   b:= b - a;
                         end;
                    s:= round(sqrt(a));
                    if (s*s = a) and (a <> 1) then
                         writeln(b2, arr[i],' ', arr[j]); 
               end;
     close(b1);
     close(b2);
     readln
end.
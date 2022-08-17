uses crt;
var n, i, s, count: longint;
    arr: array [1..100] of longint;
begin
     clrscr;
     readln(n);
     s:= n;
     count:= 0;
     for i:= 1 to n do
          begin
               arr[i]:= n mod 10;
               count:= count + 1;
               n:= n div 10;
          end;
     
     readln
end.
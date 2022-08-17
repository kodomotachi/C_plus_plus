uses crt;
var arr: array [1..100] of longint;
    n, s, i, s1, t, count: longint;
begin
   clrscr;
   readln(n);
   for i:= 1 to n do 
      readln(arr[i]);
   for i:= 1 to n do 
      begin
         s:= 0;
         count:= 0;
         s1:= 0;
         while (arr[i] <> 0) do
            begin
               t:= arr[i] mod 10;
               s:= s + t;
               count:= count + 1;
               s1:= s1 + t*t;
               arr[i]:= arr[i] div 10;  
            end;
         write(count);
         write(' ', s);
         write(' ', s1);
         writeln;
      end;
   readln
end.
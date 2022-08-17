uses crt;
var a: array[1..100, 1..100] of integer;
    s, i, j, n: integer;
begin
     clrscr;
     readln(n);
     for i:= 1 to n do 
          for j:= 1 to n do
               read(a[i, j]);
     s:= 0;
     for i:= 1 to n do 
          for j:= 1 to n do 
               if (i = j) then
                    s:= s + a[i, j];
     write(s);
     readln 
end.
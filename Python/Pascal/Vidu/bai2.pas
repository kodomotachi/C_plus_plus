uses crt;
var arr: array [1..100] of integer;
    n, i, s, min, max: integer;
    b1, b2: text;
begin
     clrscr;
     assign(b1,'bai2.inp');
     assign(b2,'bai2.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n);
     for i:= 1 to n do
          read(b1, arr[i]);
     max:= arr[1];
     for i:= 1 to n do
          if (arr[i] mod 2 = 0) and (max < arr[i]) then
               max:= arr[i];
     min:= max;
     for i:= 1 to n do
          if (arr[i] mod 2 = 1) and (min > arr[i]) then
               min:= arr[i];
     s:= max + min;
     write(b2, s);
     close(b1);
     close(b2);
     readln
end.
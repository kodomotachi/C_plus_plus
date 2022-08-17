uses crt;
type kmang = array[1..100] of integer;
var b1, b2: text;
    n, i, j, min: longint;
    arr: kmang;
begin
   clrscr;
   assign(b1,'ship.inp');
   assign(b2,'ship.out');
   reset(b1);
   rewrite(b2);
   readln(b1, n);
   for i:= 1 to n do
      read(b1, arr[i]);
   min:= 1000;
   for i:= 1 to n do
      for j:= i + 1 to n - 1 do
         if (min > abs(arr[i] - arr[j])) then
            min:= abs(arr[i] - arr[j]);
   write(b2, min);
   close(b1);
   close(b2);
   readkey
end.

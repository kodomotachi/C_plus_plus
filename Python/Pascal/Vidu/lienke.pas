uses crt;
var n: qword;
    i, count, j, tg: integer;
    arr: array [1..100] of integer;
begin
     clrscr;
     readln(n);
     count:= 0;
     while (n <> 0) do
          begin
               count:= count + 1;
               arr[count]:= n mod 10;
               n:= n div 10;
          end;
     for i:= 1 to count - 1 do
          for j:= i + 1 to count do
               begin
                    if (arr[i] < arr[j]) then
                         begin
                              tg:= arr[i];
                              arr[i]:= arr[j];
                              arr[j]:= tg;
                         end;
               end;
     write(count);
     readln 
end.
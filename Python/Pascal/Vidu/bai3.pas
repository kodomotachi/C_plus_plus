uses crt;
type ArrInt = array [1..100] of integer;
     ArrNumber = array [1..100] of integer;
var b1, b2: text;
    a, b, count2, x, n, i, count, bit, j, tg, locate, min1, min2: integer;
    arr: ArrInt;
    num: ArrNumber;
begin
     clrscr;
     assign(b1,'bai3.inp');
     assign(b2,'bai3.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n, x);
     for i:= 1 to n do
          read(b1, arr[i]);
     for i:= 1 to 100 do
          num[i]:= 0;
     bit:= 0;
     count:= 0;
     for i:= 2 to round(sqrt(x)) do
          if (x mod i = 0) then
               bit:= 1;
     if (bit = 0) then
          write(b2, x)
     else
          begin
               count:= 0;
               for i:= 1 to n do   
                    begin
                         bit:= 0;
                         for j:= 2 to round(sqrt(arr[i])) do
                              if (arr[i] mod j = 0) then
                                   bit:= 1;
                         if (bit = 0) then
                              begin
                                   count:= count + 1;
                                   num[count]:= arr[i];
                              end;
                    end;
               num[count + 1]:= x;
               for i:= 1 to count do
                    for j:= i + 1 to count + 1 do
                         begin
                              if (num[i] > num[j]) then
                                   begin
                                        tg:= num[i];
                                        num[i]:= num[j];
                                        num[j]:= tg;
                                   end;
                         end;
               count2:= 0;
               for i:= 1 to count + 1 do 
                    begin
                         if (num[i] = x) then
                              count2:= count2 + 1;
                         if (count2 = 1) then
                              locate:= i - 1;
                    end;
               a:= abs(num[locate] - num[locate - 1]);
               b:= abs(num[locate] - num[locate + count2]);
               if (a > b) then
                    write(b2, num[locate + count2])
               else if (b > a) then
                    write(b2, num[locate - 1])
               else
                    write(b2, num[locate - 1],' ', num[locate + count2]);
          end;
     close(b1);
     close(b2);
     readln 
end.
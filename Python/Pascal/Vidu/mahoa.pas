uses crt;
type ArrString = array [1..100] of string;
var n, i, bit, count, j, m: longint;
    b1, b2: text;
    arr: ArrString;

function test(s: char): integer;
begin
     if (s >= 'a') and (s <= 'z') then
          test:= 0
     else if (s >= '0') and (s <= '9') then
          test:= 1;
end;

begin
     clrscr;
     assign(b1,'mahoa.inp');
     assign(b2,'mahoa.out');
     reset(b1);
     rewrite(b2);
     readln(b1, n);
     for i:= 1 to n do
          begin
               readln(b1, arr[i]);
          end;
     for i:= 1 to n do
          begin
               bit:= 0;
               for j:= 1 to length(arr[i]) do   
                    begin
                         if (test(arr[i][j]) = 1) then
                              begin
                                   bit:= 1;
                                   break;
                              end;
                    end;
               if (bit = 1) then
                    begin
                         count:= 0;
                         for j:= 1 to length(arr[i]) do
                              begin
                                   if (test(arr[i][j]) = 0) and (test(arr[i][j + 1]) = 0) then
                                        begin
                                             if (j = 1) then
                                                  write(b2, arr[i][j], arr[i][j + 1])
                                             else if (test(arr[i][j - 1]) = 0) then
                                                  write(b2, arr[i][j], arr[i][j + 1])
                                             else if (test(arr[i][j - 1]) = 1) then
                                                  write(b2, arr[i][j + 1]);
                                        end
                                   else if (test(arr[i][j]) = 1) and (test(arr[i][j + 1]) = 0) then
                                        begin
                                             count:= count*10 + (ord(arr[i][j]) - 48);
                                             for m:= 1 to count do
                                                  write(b2, arr[i][j + 1]);
                                             count:= 0;
                                        end
                                   else if (test(arr[i][j]) = 0) and (test(arr[i][j + 1]) = 1) then
                                        begin
                                             if (test(arr[i][j - 1]) = 0) then
                                                  write(b2, arr[i][j])
                                             else 
                                                  continue;
                                        end
                                   else if (test(arr[i][j]) = 1) and (test(arr[i][j + 1]) = 1) then
                                        begin
                                             count:= count*100 + (ord(arr[i][j]) - 48)*10 + (ord(arr[i][j + 1]) - 48);
                                        end;
                              end;
                         writeln(b2);
                    end
               else if (bit = 1) then
                    begin
                         
                    end;
          end;
     close(b1);
     close(b2);
     readln 
end.
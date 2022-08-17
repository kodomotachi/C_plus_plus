uses crt;
var s: string;
    i, j, bit, locate, count: integer;
    arr: array [1..25] of char;
    z: char;
    memory: array [1..25] of integer;
begin
     clrscr;
     write('Nhap xau: ');
     readln(s);
     for i:= 1 to length(s) do
          if (s[i] >= 'a') and (s[i] <= 'z') then
               upcase(s[i]);
     count:= 65;
     i:= 1;
     for z:= 'A' to 'Z' do
          begin
               arr[i]:= z;
               memory[i]:= 0;
               inc(i);
          end;
     for i:= 1 to length(s) do
          begin
               bit:= 0;
               for j:= 1 to 25 do
                    if (s[i] = arr[j]) then
                         begin
                              bit:= 1;
                              locate:= i;
                         end;
               if (bit = 1) then
                    inc(memory[locate])
               else
                    continue;
          end;
     for i:= 1 to 25 do
          writeln(arr[i]);
     for i:= 1 to 25 do
          if (memory[i] <> 0) then
               begin
                    write(arr[i],': ', memory[i]);
                    writeln;
               end;
     readln 
end.
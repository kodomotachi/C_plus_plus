uses crt;
var s, s1: string;
    i, count, j: integer;
begin
   clrscr;
   readln(s);
   s1:= '';
   count:= 0;
   for i:= 2 to length(s) do
      begin
         if (s[i] = '#') and (s[i - 1] <> ' ') then
            count:= count + 2
         else if (s[i] = '#') and (s[i - 1] = ' ') then
            inc(count);
      end;
   j:= 1;
   i:= 1;
   while (j <> length(s) - count) do
      begin
         if (s[i] <> '#') and (s[i +1] <> '#') then
            begin
               s1[j]:= s[i];
               inc(j);
               inc(i);
            end
         else if (s[i] = ' ') and (s[i + 1] = '#') then
            begin
               s1[j]:= s[i];
               i:= i + 2;
               inc(j);
            end
         else if ((s[i] <> '#') and (s[i + 1] = '#')) or ((s[i] = '#') and (s[i + 1] = '#')) then
            inc(i);
         if (i = length(s) - 1) then
            break;
      end;
   for i:= 1 to length(s) - count do
      write(s1[i]);
   readln
end.
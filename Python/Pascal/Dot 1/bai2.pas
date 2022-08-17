program bai2;
uses crt;
var a, b, c: integer;
begin
   clrscr;
   randomize;
   a:= random(2);
   b:= random(2);
   c:= random(2);
   write(a,' ',b,' ',c);
   writeln;
   if (a = b) and (b <> c) then
      write('Cuong thang')
   else if (a = c) and (b <> c) then
      write('Binh thang')
   else if (b = c) and (a <> c) then
      write('An thang')
   else if (a = b) and (b = c) then
      write('Hoa nhau');
   readkey
end.
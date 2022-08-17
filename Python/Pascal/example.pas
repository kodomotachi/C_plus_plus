program bai2;
uses crt;
var m, n: longint;
    s: string;
    b1, b2: text;
    code, i: byte;
begin
   clrscr;
   assign(b1,'bai2.inp');
   assign(b2,'bai2.out');
   reset(b1);
   rewrite(b2);
   read(b1, s);
   n:= 0;
   for i:= 1 to length(s) do
      begin
         val(s[i], m, code);
         n:= n + m;
      end;
   write(b2, n);
   close(b1);
   close(b2);
   readkey
end.

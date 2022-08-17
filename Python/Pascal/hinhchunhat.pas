program hinh_chu_nhat;
uses crt;
var a, b: integer;
    b1, b2: text;
begin
   clrscr;
   assign(b1,'hcn.inp');
   assign(b2,'hcn.out');
   reset(b1);
   rewrite(b2);
   read(b1, a, b);
   write(b2, a*b);
   close(b1);
   close(b2);
   readkey
end.
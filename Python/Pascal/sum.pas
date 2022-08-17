uses crt;
var a, b, sum: extended;
    b1, b2: text;
begin
     clrscr;
     assign(b1,'sum.inp');
     assign(b2,'sum.out');
     reset(b1);
     rewrite(b2);
     readln(b1, a, b);
     a1:= round(a);
     b2:= round(b);
     if (a mod 10 < 0.5) and (b mod 10 < 0.5) then
          begin 
               for i:= a1 + 1 to 
          end;
     close(b1);
     close(b2);
     readln
end.
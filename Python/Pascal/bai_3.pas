uses crt;
var b1, b2, b3: text;
    s, s1: string;
    n, i, k, tg, m: integer;
begin
     clrscr;
     assign(b1,'vanban.inp');
     assign(b2,'mahoa.out');
     assign(b3,'giaima.out');
     reset(b1);
     rewrite(b2);
     rewrite(b3);
     readln(b1, k);
     readln(b1, s);
     for i:= 1 to length(s) do
          begin
               tg:= ord(s[i]) - 97;
               tg:= tg + 5;
               m:= tg mod 26;
               s1[i]:= chr(m + 97);
          end;
     write(b2, k);
     writeln(b2);
     for i:= 1 to length(s) do
          begin
               write(b2, s1[i]);
          end;
     write(b3, k);
     writeln(b3);
     writeln(b3, s);
     close(b1);
     close(b2);
     close(b3);
end.
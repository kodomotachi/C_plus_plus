uses crt;
var s: string;
    i, tf, j, c: integer;
begin
     clrscr;
     readln(s);
     tf:= -1;
     while (tf <= 0) do
          begin
               for i:= 1 to length(s) do
                    begin
                         c:= 0;
                         for j:= i + 1 to length(s) do
                              if (s[i] = s[j]) then
                                   begin
                                        c:= 1;
                                        break;
                                   end;
                         break;
                    end;
               if (c = 1) then
                    tf:= 0
               else
                    tf:= 1;
               if (tf = 1) then
                    break
               else
                    begin
                         write('Nhap lai xau: ');
                         readln(s);
                    end;
          end;
     write('Thanh cong');
     readln 
end.
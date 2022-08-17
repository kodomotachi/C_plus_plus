program khuyen;
uses crt;
var s1, s2: string;
    i, n, count: longint;
begin
    clrscr;
    write('Nhap xau: ');
    readln(s1);
    s2:= '';
    count:= 1;
    for i:= 1 to length(s1) do
        begin
            if (s1[i] <> ' ') then
                begin
                    s2[count]:= s1[i];
                    count:= count + 1;
                end;
        end;
    for i:= 1 to count do
        write(s2[i]);
    readln
end.
uses crt;
var s: string;
    i: integer;

function test(s: char): integer;
begin
    if (s >= 'a') and (s <= 'z') then
        test:= 0
    else if (s >= '0') and (s <= '9') then
        test:= 1;
end;

begin
    clrscr;
    write('Nhap xau: ');
    readln(s);
    for i:= 1 to length(s) do
        write(test(s[i]));
    readln
end.
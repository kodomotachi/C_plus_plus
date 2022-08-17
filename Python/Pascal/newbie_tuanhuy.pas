uses crt;
var arr: array [1..100] of integer;
    n, i, s: integer;
begin
    clrscr;
    write('Nhap so luong phan tu: ');
    readln(n);
    for i:= 1 to n do
        begin
            write('a[',i,'] = ');
            readln(arr[i]);
        end;
    s:= 0;
    for i:= 1 to n do
        if (arr[i] mod 3 = 0) then
            s:= s + arr[i];
    write(s);
    readln
end.
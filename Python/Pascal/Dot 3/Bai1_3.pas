uses crt;
var a: array[1..100,1..100] of longint;
    s, b, c, i, n, j, d, count: longint ;
begin
    clrscr;
    write('Nhap so cap ma phuong: ');
    readln(n);
    b:= n mod 2;
    c:= n div 2;
    s:= b + c;
    a[1, s]:= 1;
    count:= 1;
    d:= n*n;
    i:= 1;
    j:= s;
    while (count <> d) do
        begin
            count:= count + 1;
            if (i = 1) and (j = n) then
                begin 
                i:= i + 1;
                a[i, j]:= count;
                end
            else if (i = 1) then
                begin 
                j:= 1;
                i:= i - 1;
                a[i, j]:= count;
                end
            else if (a[i - 1, j + 1] <> 0) then
                begin
                a[i, j]:= count;
                i:= i + 1;
                end 
            else 
                begin
                a[i, j]:= count;
                i:= i - 1;
                j:= j + 1;
                end;
        end;
    for i:= 1 to n do
        for j:= 1 to n do
            begin 
                write(a[i, j]:5);
                if (j = n) then
                writeln;
            end;
    readkey
end.
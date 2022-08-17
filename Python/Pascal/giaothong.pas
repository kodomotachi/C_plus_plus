uses crt;
var b1, b2: text;
    n, k: int64;
    u, v: array [1..1000] of int64;
    a: array [1..1000,1..1000] of int64;
begin
    clrscr;
    assign(b1,'giaothong.inp');
    assign(b2,'giaothong.out');
    reset(b1);
    rewrite(b2);
    readln(b1, n, k);
    for i:= 1 to k do
        readln(b1, u[i], v[i]);
    for i:= 1 to n do
        for j:= 1 to n do
            readln(b2, a[i, j]);
    for 
    close(b1);
    close(b2); 
end.
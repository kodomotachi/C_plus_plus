uses crt;
var arr_a, arr_b: array [1..50, 1..50] of integer;
    m, n, i, j: integer;

function test(n: integer): boolean;
var a: integer;
begin
    a:= 0; 
    for i:= 2 to round(sqrt(n)) do
        begin
            if (n mod i = 0) then
                begin
                    a:= 1; 
                    break;
                end;
        end;
    if (a = 0) then
        test:= true;
    else
        test:= false; 
end;

function number()

begin
    clrscr;
    readln(m, n);
    for i:= 1 to n do
        begin
            for j:= 1 to m do
                begin
                    read(arr_a[i, j]);
                end;
            readln;
        end;
    for i:= 1 to n do
        for j:= 1 to m do
            if (test(n) = true)
    readln
end.
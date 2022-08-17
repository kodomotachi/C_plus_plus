uses crt;
type arr = array[1..100] of integer;
var a: arr;
    n, i: integer;
    t: char;

procedure tangDan(a: arr; n: integer);
var i, j, tmp: integer;
begin
     clrscr;
     for i:= 1 to n - 1 do
          for j:= i + 1 to n do
               begin
                    if (a[i] > a[j]) then
                         begin
                              tmp:= a[i];
                              a[i]:= a[j];
                              a[j]:= tmp;
                         end;
               end;
     for i:= 1 to n do
          write(a[i],' ');
end;

procedure giamDan(a: arr; n: integer);
var i, j, tmp: integer;
begin
     clrscr;
     for i:= 1 to n - 1 do
          for j:= i + 1 to n do
               begin
                    if (a[i] < a[j]) then
                         begin
                              tmp:= a[i];
                              a[i]:= a[j];
                              a[j]:= tmp;
                         end;
               end;
     for i:= 1 to n do
          write(a[i],' ');
end;

begin
     clrscr;
     write('Nhap so luong phan tu: ');
     readln(n);
     for i:= 1 to n do
          begin   
               write('a[',i,'] = ');
               readln(a[i]);
          end;
     writeln('================================'); 
     writeln('Nhap 1 trong cac phuong an sau');
     writeln('================================');
     writeln('(1): Sap xep thu tu tu cao toi thap');
     writeln('(2): Sap xep thu tu tu thap toi cao');
     writeln('(3): Thoat khoi chuong trinh');
     writeln('================================');
     write('Nhap phuong an: ');
     readln(t);
     if (t = '1') then
          giamDan(a, n)
     else if (t = '2') then
          tangDan(a,n)
     else if (t = '3') then
          exit
     else
          writeln('Try agian :)');
     readln
end.
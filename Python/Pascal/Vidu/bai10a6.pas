program vd;
uses crt;
var s:string;
    Ketqua,i,dem:integer;
begin
Ketqua:=0;
clrscr;
   write('Nhap xau: '); 
    readln(s);
   for i:=1 to length(s) do
   if copy(s,i,1)='a' then 
    Ketqua:=Ketqua+1;
   writeln('So luong ki tu "a" co trong xau la: ',Ketqua);
   readln
end.
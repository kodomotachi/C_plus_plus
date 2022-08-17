program bai3_2;
uses crt;
var m: char;

procedure hinhVuong;
var n, s: integer;
begin
   clrscr;
   write('Nhap do dai canh hinh vuong: ');
   readln(n);
   s:= n*n;
   write('Dien tich: ',s);
end;

procedure hinhChuNhat;
var a, b, s: integer;
begin
   clrscr;
   write('Nhap chieu dai: ');
   readln(a);
   write('Nhap chieu rong: ');
   readln(b);
   s:= a*b;
   write('Dien tich: ',s);
end;

procedure hinhTron;
var r: real;
const pi = 3.1415;
begin
   clrscr;
   write('Nhap ban kinh: ');
   readln(r);
   write('Dien tich: ',r*pi:10:4);
end;

procedure tamGiac;
var a, h: real;
begin
   clrscr;
   write('Nhap chieu cao: ');
   readln(h);
   write('Nhap canh day: ');
   readln(a);
   write('Dien tich: ',((1/2)*a*h):10:3);
end;

procedure hinhThang;
var a, b, h, s: real;
begin
   clrscr;
   write('Nhap canh day thu nhat: ');
   readln(a);
   write('Nhap canh day thu hai: ');
   readln(b);
   write('Nhap chieu cao: ');
   readln(h);
   s:= ((a+b)*h)/2;
   write('Dien tich: ',s:10:3);
end;

procedure menu;
var t: integer;
begin
   clrscr;
   writeln('CHUONG TRINH TINH DIEN TICH CAC HINH');
   writeln('==============================================');
   writeln('Lua chon chuong trinh can tinh');
   writeln;
   writeln('0: Thoat chuong trinh');
   writeln('1: Hinh vuong');
   writeln('2: Hinh chu nhat');
   writeln('3: Hinh tron');
   writeln('4: Tam giac');
   writeln('5: Hinh thang');
   writeln('==============================================');
   write('Nhap lua chon cua ban: ');
   readln(t);
   case t of
      0: exit;
      1: hinhVuong;
      2: hinhChuNhat;
      3: hinhTron;
      4: tamGiac;
      5: hinhThang;
   end;
end;

begin
   clrscr;
   menu;
   repeat
      writeln;
      write('Tiep tuc (c/k)?');
      readln(m);
      if (m = 'c') then
         menu;
   until (m = 'k');
   readln
end.
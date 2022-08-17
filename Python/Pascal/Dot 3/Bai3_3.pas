uses crt;
var n, m, i, j: integer;
    a: array [1..100] of integer;
    b: array [1..100] of integer;
    s: integer;
begin
     clrscr;
     write('Nhap n: ');
     readln(n);
     for i:= 1 to n do
          begin 
               write('a[',i,']  = ');
               readln(a[i]);
          end;
     write('Nhap m: ');
     readln(m);
     s:= 0;
     for i:= 1 to m do
          begin
               write('b[',i,'] = ');
               readln(b[i]);
          end;
     if (m > n) then
          write('Khong thuc hien chuong trinh')    
     else
          begin
               for j:= 1 to m do
               begin
                    for i:= 1 to n do
                    begin
                         if (b[j] = a[i]) then
                              continue
                         else
                              s:= 1;
                              break;
                    end;
               end;
               if (s = 0) then
                  write('Mang b ko pk la tap con cua mang a')
               else 
                  write('Mang b la tap con cua mang a');
          end;   
    readkey
end.
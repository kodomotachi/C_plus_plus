uses crt;
var n, i, j, m, k, tmp, sum: integer;
    a[1..100,1..100]: array of integer;
    s[1..100]: array of integer;
begin
     clrscr;
     write('Nhap chieu rong: ');
     readln(n);
     write('Nhap chieu dai: ');
     readln(m);
     for i:= 1 to n do
          for j:= 1 to m do
               begin
                    write('a[',i,','j',] = ');
                    readln(a[i, j]);      
               end;
     for i:= 1 to n do
          begin
               for j:= 1 to m - 1 do 
                    for k:= j to m do
                         begin
                              if (a[i, j] < a[i, k]) then
                                   begin
                                        tmp:= a[i, j];
                                        a[i, j]:= a[i, k];
                                        a[i, k]:= tmp;                
                                   end;
                         end; 
          end;
     for i:= 1 to n do
          begin
               s[i]:= 0;
          end;
     for i:= 1 to n do 
          for j:= 1 to m do
               begin
                    s[i]:= s[i] + a[i, j];
               end;
     for i:= 1 to n - 1 do
          for j:= i to n do
               begin
                    if (a[i] < a[j]) then    
                         begin
                              tmp:= a[i];
                              a[i]:= a[j];
                              a[j]:= tmp;
                         end;
               end; 
     for i:= 1 to n do
          begin
               sum:= 0;
               for j:= 1 to m do   
                    begin
                         sum:= sum + a[i, j];
                    end; 
          end;
     readln
end.
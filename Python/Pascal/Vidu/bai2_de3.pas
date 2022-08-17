uses crt;
type mang=array [1..100000] of longint;
var i,n:longint;
    a,b:mang;
    s:string;
    procedure sapxep(var a:mang;n:longint);
    var i,j,max:longint;
    begin
        max:=0;
        for i:=1 to n do
        for j:=i to n do
        if a[i]>a[j] then
        begin
            max:=a[i];
            a[i]:=a[j];
            a[j]:=max;
        end;
    end;
    procedure nhap;
    var s1,c:string;
        j,k,tam,tam1,tam2,tam3:longint;
    begin
        write('Nhap so tu nhien A: ');readln(s);
        k:=length(s);
        for i:=1 to k do val(s[i],a[i]);
        sapxep(a,k);
        tam:=1;
        tam1:=0;
        tam2:=1;
        tam3:=1;
        for i:=1 to k do tam3:=tam3*i;
        for i:=1 to tam3 do
        begin
            s1:='';
            str(a[i],s1);
            for j:=1 to k do
                if a[j]<>a[i] then
                begin
                    c:='';
                    str(a[j],c);
                    s1:=s1+c;
                    val(s1,b[tam]);
                end;
            inc(tam);
        end;
        for i:=1 to tam3 do
        begin
            s1:='';
            str(a[i],s1);
            for j:=k downto 1 do
                if a[j]<>a[i] then
                begin
                    c:='';
                    str(a[j],c);
                    s1:=s1+c;
                    val(s1,b[tam]);
                end;
            inc(tam);
        end;
        sapxep(b,tam-1);
        val(s,tam1);
        for i:=1 to tam-1 do if b[i]=tam1 then
        begin
            if i=1 then write('0') else
            write(b[i-1]);
            break;
        end
        else if i=tam-1 then write('0');
     end;
BEGIN
 clrscr;
 nhap;
 readln;
end.

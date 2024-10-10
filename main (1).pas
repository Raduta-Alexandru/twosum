program test;
type vect = array[1..100] of integer;
var v:vect;
n,i,num,min,max:integer;
gasit:boolean;
begin
gasit:=false;
write('n=');
readln(n);
write('num=');
readln(num);
min:=1;
max:=n;
for i:=1 to n do
begin
write('v[',i,']=');
readln(v[i]);
end;
while (( min < max ) and (gasit <> true)) do
begin
if ( v[min] + v[max] = num ) then gasit:=true
else
if ( v[min] + v[max] < num ) then min:=min + 1
else
if ( v[min] + v[max] > num ) then max:=max - 1;
end;
write(gasit);
write('indicii ',min,' si ',max);
end.
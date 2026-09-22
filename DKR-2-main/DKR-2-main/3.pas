program dkr3;
var a,b,o,rev:string;
c,i,n,m,j:integer;
found:boolean;
begin
  write ('Введите строку: ');
  readln (a);
  write ('Введите подстроку: ');
  readln (b);
  
  c:=0;//позиция подстроки
  n:=length(a);
  m:=length(b);
// ищем подстроку и сравниваем со строкой
   for i:= 1 to n-m+1 do
  begin
    found:=true;
    for j:= 1 to m do
      if a[i+j-1]<>b[j] then 
      begin
        found:=false;
        break;
      end;
      if found then
      begin
      c:=i;
      break;
      end;
  end;
      if c=0 then
      begin
        writeln('Подстрока не найдена');
        exit;
      end;

//реверс подстроки
rev:='';
    for i:= length(b) downto 1 do
      rev:= rev+ b[i];
//сбор самой строки до подстроки+ подстрока+ после подстроки
  o:='';
  for i:= 1 to c - 1 do
    o:= o + a[i];
  // Реверснутая подстрока
  o:= o + rev;
  // Часть после замененной подстроки
  for i:= c + m to n do
    o := o + a[i];
writeln('Результат: ',o);
end.

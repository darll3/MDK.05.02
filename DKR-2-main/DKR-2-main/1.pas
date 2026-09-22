program dkr1;
var maxValue, minValue, sum, i:integer;
a:array [1..10] of integer;
begin
  write ('Введите числа в массиве от 1 до 10: ');
  for i:= 1 to 10 do
    read (a[i]);
  
  maxValue:=a[1];
  minValue:=a[1];
  
  for i:=2 to 10 do
  begin
    if a[i]>maxValue then
      maxValue:=a[i];
    if a[i]<minValue then
      minValue:=a[i];
  end;
  
  writeln ('Максимальное число: ',maxValue);
  writeln ('Минимальное число: ',minValue);
  
  sum:= maxValue+minValue;
  writeln ('Их сумма равна: ', sum);
end.
print('Введите числа в массиве от 1 до 10: ')
a=[]
for i in range (10):
    n=int(input())
    a.append(n)

maxValue = a[0]
for i in range(1, 10):
    if a[i]>maxValue:
        maxValue=a[i]
minValue = a[0]
for i in range (1, 10):
    if a[i]<minValue:
        minValue=a[i]
print('Максимальное число: ',maxValue)
print('Минимальное число: ',minValue)

sum= maxValue+minValue
print('Их сумма равна: ', sum)


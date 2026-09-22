a=input('Введите строку: ')
b=input('Введите подстроку: ')

c=0 #позиция подстроки
n=len(a)
m=len(b)
#ищем подстроку
for i in range (n-m+1):
    found =True
    for j in range (m):
        if a[i+j-1]!=b[j]:
            found = False
            break
    if found:
        c=i #запомнимаем начало подстроки
        break
#еслии нет подстроки
if c==0:
    print('Подстрока не найдена')
    exit()
#реверс подстроки
rev=''
for i in range (len(b)-1, -1, -1):
    rev+=b[i]
o = a[:c]+rev+a[c+m:] # до подстроки + перевёрнутая подстрока + после подстроки
print('Результат: ',a)
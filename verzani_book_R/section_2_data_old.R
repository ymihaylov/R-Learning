# Vector
typos = c(187, 186, 188, 187)
typos

# Applying a function
# Средно (аритметично)
mean(typos)

# Медиана - Централна средна величина. 
# Числото, което е по-средата. 
# Ако са четен брой, то средно аритметично на средните две
median(typos)

# Variance
var(typos)

# Data is a vector
# Dot is only for the name
typos.draft1 = c(5, 12, 34, 1, 59)
typos.draft2 = c(12, 441, 81, 2, 51)

typos.draft1[2] = 5

# Извежда всички, без 2ри елемент
typos.draft2[-2]

# Извежда първи, втори и четвърти - slicing
typos.draft1[c(1,2,4)]

# Максималното
max(typos)

# Сръвнява всичките и връща вектор с резултатите
typos == 188

# Връща индексите, на елементите от вектора за които е вярно условието
which(typos == 188)
which(typos > 186)

# Дължината на вектора
n = length(typos)
# Range
pages = 1:n
# Logical extraction
pages[typos == 187]

# Sequance
seq(4, 9, 1)

# Композиция от команди
(1:length(typos))[typos == max(typos)]

# Сума на всички елементи
sum(typos > 1)

# Събиране 
sum = typos.draft1 + typos.draft2

# Изваждане (Разликата между двата)
sub = typos.draft1 - typos.draft2

x = c(45,43,46,48,51,46,50,47,46,45)
length(x)
mean(x)
median(x)
var(x)
max(x)
min(x)

# Добавяне на нови елементи към вектора
x = c(x, 48,49,51,50,49)
length(x)
x[16] = 41
x[17:20] = c(40,38,35,40)
x[24] = 5
# x [22] is NA

# Graphical data entry interfaces
# Показва таблица за edit на данните
data.entry(typos)
# Same only, doesnt save changes
de(x)
# Use editor to edit x
edit(x)

# Намиране средно от петия до деветия
day = 5
mean(x[day:day+4])

# Вектор със това как са се менили min/max при обхождането
cummax(x)
cummin(x)

# whales beached in Texas during the period 1990 to 1999
whale = c(74, 122, 235, 111, 292, 111, 211, 133, 156, 79)
mean(whale)
var(whale)
# std(whale)

# Standart deviation
sqrt(var(whale))
sqrt(sum((whale - mean(whale))^2 / (length(whale)-1)))

# Create function
std = function(x) sqrt(var(x))
std(whale)
sd(whale)

# Accessing Data
x = 1:10
length(x)
x[2]
# Всички без втория
x[-2]
# От първи до пети
x[1:5]
# Последните k елемента
x[(length(x)-5):length(x)]
# Специфични елементи
x[c(1, 6, 10)]
# Елементите на които, стойноста му е по голяма от три
x[x>3]
# Or operator
x[ x< -2 | x > 2]
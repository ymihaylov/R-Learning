# Code examples from SimpleR by John Verzani
# Link: http://cran.r-project.org/doc/contrib/Verzani-SimpleR.pdf

# Vectorw
typos = c(2, 3, 8, 4, 4)
typos

mean(typos)

median(typos)

# Variance
var(typos)

typos.draft1 = c(1, 4, 8, 6, 9)

typos.draft1[c(1,2)]

max(typos)

# Compares per element
typos == 3

# Print elemnt indexes
which(typos > 3)

# Logical extraction
n = length(typos)
pages = 1:n
pages[typos == 1]

# Sequance
seq(4, 9, 1)

# Composition
(1:length(typos))[typos == max(typos)]

sum(typos > 3)

typos + typos.draft1

x = c(45,43,46,48,51,46,50,47,46,45)
mean(x)
median(x)
var(x)
max(x)
min(x)

# Adding new items to vector
x = c(x, 48,49,51,50,49)
x[16] = 41
# x[16, 20] = c(40, 38, 35, 40)

# Graphical interfaces
#data.entry(typos)

day = 5
mean(x[day:day+4])

# Commulative maximum and minimum
cummax(x)
cummin(x)
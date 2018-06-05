x <- 1:4
y <- 3:6

setequal(x, x)
setequal(x, y)
setequal(y, c(6, 5, 4, 3)) # True

is.element(6, y)
2 %in% y

is.element(x, y) # Checks for every element

union(x, y)
intersect(x, y)
setdiff(x, y)

z <- c('a', 'b', 'c')
mode(x)
mode(z)
a <- union(x, z)
mode(a)
intersect(x, z) # 0, beacuase z is set of chartacters, x is set of numbers
union(union(x, y), z)

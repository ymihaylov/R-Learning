# Install Package
install.packages("UsingR")
install.packages("Hmisc")

# List installed packages
installed.packages()

# List names
row.names(installed.packages())

# Load package
library(UsingR)

# R help
help(row.names)
?row.names

# Assign Variables
x = 5
y <- 2*x + 6
"Austria" -> z
x; y; z;

# Data structures
# 1. Vector / array
v1 = c() # Empty vector
v1 = c(1, 4, 6., 4, 7, 12., -17) # Vector with numbers
v1

# Add new elements to vector
v2 = c("a", "b", "c")
vmerge = c(v1, v2)

# Check types of vectors
str(v1)
str(v2)
str(vmerge) # Casted to string vector

# Date vector
v3 = as.Date(c("2015-01-01", "2016-07-08"))
?as.Date # Convert strings to dates

# The merge between numbers and dates converts dates to integer.
# This integer presents count of the days since 1970-01-01
v13 = c(v1, v3)
v13 

# as is used for force an object to belong to a class
as.numeric(vmerge) # force to be casted to number - strings are replaced by NA

as.character(v1) # No problem everything include numbers can be presented as string

as.Date(v1) # ERROR, start date for counting the days is not set
as.Date(v1, origin = "2011-01-01")

# Gets length of the vector
length(v1)

# Get element from vector
v1[1] # Indexing starts from 1!

# New vector that contains first and last element from v1
v1[c(1, length(v1))]

# Vector with four times third element of v1
v1[c(3, 3, 3, 3)] 

# Create a sequances
1:10
10:1

# Equivalent but with function
seq(from = 1, to = 10, by = 1)
seq(from = 10, to = 1, by = -1)

# Third, Sixth and from first to fourth element
v1[c(3, 6, 1:4)]

# In R we can create a subvector. The values that we DONT want!
v1[-c(3, 6)]
v1[-(3:6)]

# Histogram of random numbers
# Uniform Distribution
hist(
  trunc(runif(10^3, 1, 5.9999)), 
  col = "red", 
  main = "Histogram", 
  xlab = "Pseudo random numbers"
)

# Set Seed and Uniform Distribution
set.seed(1806) 
v4 = trunc(runif(n = 20, min = 1, max = 40.99999))
set.seed(2713) 
v5 <- round(runif(n = length(v4), min = 1, max = 40.99999))
set.seed(189) 
v6 <- round(runif(n = length(v4) - 7, min = 1, max = 40.99999))

# Operations with vectors
v4 + 3 # every element add 3
v4 * 2 # every element multiply 2
v4/7 + 11 # complex expression

v4 * v5 # Scalar multiply
v4 * v6 # Vectors doesnt have the same length!

v4.prime = v4
v4[c(1, 2, 3, 4)] = 4 # Change first 4 elements



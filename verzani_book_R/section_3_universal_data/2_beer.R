# Suppose, a group of 25 people are surveyed as to their beer-drinking preference. 
# The categories were (1) Domestic can, (2) Domestic bottle, (3) Microbrew and (4) import.
beer = c(3, 4, 1, 1, 3, 4, 3, 3, 1, 3, 2, 1, 2, 1, 2, 3, 2, 3, 1, 1, 1, 1, 4, 3, 1)
barplot(beer) # this isn't correct - graph all the values
barplot(table(beer)) # summerized data
barplot(table(beer)/length(beer)) # divide by n for proportion???

# Help for functions
?scan 

Mean - средно аритметично. Събираме всички и ги делим на броя им. Напримег средна възраст н health club-а
µ - mew - symbol for mean

Loc 1207 Sharpen your pencil
100 / 5 = 20

outliers - големи различия в стойностите

# Finding the median
median -
odd count of numbers - (n + 1) / 2 - this is the position of median
even number - midpoint (n + 1) / 2

If the skewed to the right the mean is to the right of the median (higher)
If the data is skewed to the left the mean is to the left of the median (lower)

Mean и median са еднакви (приблизително), ако данните са симетрични

ages=c(1,1,1,2,2,2,2,33,31,31,31,32,32,32,32,33,33,33)
mean = 20
median = 31
They failed

# Introducing the mode
Most popular value
ages data is bimodal because there are 2 modes
Mode works with categorical data too

mode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

Only mode can work with categorical data.

Avarage  | When to use it
Mean (µ) | When the data is fairly symmetric and shows just the one trend
Median   | When the data is skewed because of outliers
Mode     | When youre working with categorical data. When the data shows two or more clusters of data.

Loc 1738 - Sharpen your pencil - Какво става със средното, медианата и модата като заплатите се увеличават с 2000$ или с 10%

Statistics can be informative, but they can also misleading.

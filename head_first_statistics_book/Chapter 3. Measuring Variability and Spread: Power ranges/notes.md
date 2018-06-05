Variability - Променливост
Spread - Обхват
Standart Deviation - Стандартно отклонение

# Ranges and Variations
> scores1=c(7, 8, 9, 9, 10, 10, 11, 11, 12, 13)
> scores2=c(7, 9, 9, 10, 10, 10, 10, 11, 11, 13)
> scores3=c(3, 3, 6, 7, 7, 10, 10, 10, 11, 13, 30)

Mean, median and mode is 10
But the data is different, so what should we use?

# Use the range to differentiate between data sets
Avarages dont tell us how the data varies
We can defferentiate between each set of data by looking at the way in which the scores spread out from the avarage.
Each scores are distributed differently and if we can measure how the scores are dispersed, the coach will be able to make a more informed decision.

Dispersion - дисперсия - разпръсване

## Measuring the range
The range tells us over how many numbers the data extends.
To find the range we take the largest number in the data and subtract the smallest.

scores1 range = 13 - 7 = 6
scores2 range = 13 - 7 = 6
scores3 range = 30 - 3 = 27

The smallest value is called the lower bound - Долна граница
The largest value is the upper bound - горна граница

R syntax
> max(scores1) - min(scores1)

The range only describes the width of data, not how its dispersed between the bounds.
The range can measure how far the values are spread out (разпространението на стойностите), but its difficult to get a real picture of how the data is distributed.

> somedata=c(1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5)
> max(somedata) - min(somedata)
[1] 4
> mode(somedata)
[1] 3

somedata numbers are fairly evenly distributed between the lower evenly distributed between the lower bound and the upper bound

Данните са равно разпределени - evenly distributed

there no outliers for us to worry about

> range <- function(v) {
+     max(v) - min(v)
+ }

But if we have
> dataWithOutliers = c(1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 10)

Данните са разпределни от ляво, заради 10ката.

The range is a great quick-and-dirty way to get an idea of how values are distributed, but its a bit limited.

Range-а може да ни каже какви горе долу данни имаме, но не и как са разпределени.
Range-а не може да ни каже  какво се случва между горната и долната граница.

# We need to get away from outliers
- Един от начините е да отрежем outliers и да гледаме данните в по-малък range
За да ги махнем ни трябва един определен начин да ги махаме.

## Quartiles come to the rescue - четвъртини
Q1 - The lower quartile
Q3 - THe upper quartile and the highest quartile
Q2 - is the median as it splits the data in half

Interquartile range = Upper quartile - Lower quartile - midspread
IQR  = Q3 - Q1

Q2 = median

The ranges of Q2 and Q3 is called interquartile range (IOR)

If n / 4 is not an integer, then roun it up this gives you the position of the lower quartile
For Q4 - 3n / 4

Exercise Loc 1944
3  3  6  7  7 10 10 10  11 13 30
      |Q1         |Q2    |Q3
1. Whats the range of this data - 27
2. Q1 - 11 / 4 = 3 position
Q3 - 3*11 / 4 = 9 position
3. > IQR(scores3) = 4
From the book 5 beacuse up to

Normal Range is very sensitive outliers
IQR is not
IQR is more meaningful than the range

## Percentiles
If data percent = 10 its called decils
Perentile range its call it interpercentile range

The xth percentile is the value thath is k% of the way through the data. Usually denoted by Pk.
Quartiles are actually a type of percentile
The lower quartile is P25 the upper quartile is P75. The median is P50

Loc 2074 - how to calculate percentiles

Квартилите са частен случаи на персентилите

## Box and whisker plots let you visualize ranges
Q: So if you show the mean as a dot, is it to the left or right of the median
A: If the data is skewed to the rigth, then he mean will be to the right of the median and the whisker on the right will be longer than that of the left.

# Variability is more than just spread
The average distance of values from the mean is always 0. The positive and negative distances cancel each other out. So what can we do now?

# We can calculate variation with the variance
Variance - We want a way to measure the average distance of values from the mean in a way that stops the distances from cancelling each other out.

средното отклонение - корен от вариацията - standart deviation
sd(c(1, 2, 9))

Смята се като се съберат всички разстоянията от всяка стойност до средното на квадрат и се раздели на броя на стойностите.
Loc 2205

σ - стандартно отколонение - колко нормално са далече точките от средното
σ - корен от variance
σ^2 = variance

Стандартното отоколнение взима средното и гледа как може да варират стойностите от средното.

Simple method to calculate variance
(Σx^2 / n) - µ
Loc 2296

Q: Im sure Ive seen formulas for variance where you divided by (n - 1) instead of n. Is that wrong?
A: Its not wrong, but that form of the variance is really used when you're dealing with samples.

# Standart score - стандартен резултат - z-score - Loc 2419
z = (x - µ) / σ
Use standart scores to compare values across data sets
Standartscores give you a way of comparing values across different sets of data where the mean and standart deviation differ.
Standart scores give us a way of comparing values across different data sets even when the sets of data have different means and standart deviations.
They're a way of comparing values as if they came form the same set of data or distribution

Distribution - разпределение

Positive z-scores mean that your value is above the mean
If z-score is 0 then your value is the mean itself

z-scores transforms your data set into a generic distribution with a mean of 0
Standart score = number of standart deviation from the mean

Standart scores use the mean and standart deviation to convert values in a data set to a more generic distribution, while at the same time making sure our data keeps the same basic shape. They're a way of comparing different values across different data sets even when the data sets have different means and standart deviation.

Exercise Loc 2500
Statistic | How to calculate
Range | max(data) - min()data
IQR - interquartile range | Upper quartile - Lower Quartile
Standart Deviation - sqrt(var)
Variance = (Σx^2 / n) - µ

require("Rmpfr") # For big numbers

permutation <- function (n, k) {
  return (factorialMpfr(n) / factorialMpfr(n - k))  
}

countOfPeople <- 50 # Count of people in the room
probabilitiesList <- double(countOfPeople) # Array of probabilities

for (k in 1:countOfPeople) {
  d <- (1 - permutation(365, k) / (mpfr(365, precBits = 1024) ^ k)) * 100 
  probabilitiesList[k] <- asNumeric(d)
}
probabilitiesList
plot(1:countOfPeople, probabilitiesList, xlab = "Number of people in the room", ylab = "Probability in %")

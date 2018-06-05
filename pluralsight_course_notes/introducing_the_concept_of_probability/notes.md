# Introducing Sets
- Set Theory
- Naive Set Theory
- Axiomatic Set Theory

Set - A well-defined collection of distinct objects
Sets are often illustrated with Venn diagrams

- Empty sets
- Set Union
- Set Intersection
- Set Difference

## Cardinality and Set Complement
Set Cardinality = number of elements in a set
Set Complement = set of elements not contained in A (but contained elsewhere)

## Some Set Laws
- De Morgan's Law
- Distributive Properties

## Experiments and events
Consider an experiment consisting of a single balanced 6-roll die roll
The value rolled is a random variable
- Player rolled a 6
This is simple event; it cannot be docomposed

- Player rolled an even number
Player rolled a 2,4 or 6
This is complex event: it can be decomposed into simpler events

## Sample space
The set of all possible values of a random variable is called the sample space
The sample space of for a die roll is:
S = {E<sub>1</sub>, E<sub>2</sub>, E<sub>3</sub>, E<sub>4</sub>, E<sub>5</sub>, E<sub>6</sub>}
where E<sub>n</sub> is an event when n is rolled
Each element of the sample space is a sample point

## Operations on Events

## Independence of Events
If events dont influence on another, they are called independent.
- Succesive die rolls or coin flips
If subsequent events influence one another, they are dependent
- Colored balls being pulled out of a hat without replacement
- The set of possible balls gets reduced as you pull them out

## Introducing to Probability
Probability of an event is a number that is:
- A value between 0 and 1 inclusive
- Value of 0 corresponds to "unlikely", "almost never" - Ако хвърлим монета 1000 пъти, каква е вероятността, да се падне тура всички пъти
- Value of 1 corresponds to "almost surely", abreviated a.s. - Ако хвърлим монета 1000 пъти, то каква е вероятността да падне на равната си страна (flat side)
- P(event) = value
- Sometimes also expressed as percentage (0% to 100% respectively)
    - There's a 50% chance thath -> P = 0.5 = 1/2
- Used in e.g. Excel

## Rules of probability
- Probability of event A is greater than or equal to zero
P(A) >= 0
- Probability of space is one
Ако хвърлим монета, то вероятността да ни даде някакъв резултат е 1.
P(S) = 1

## Discrete vs Continous
Discrete = finite set of unique values
- Coin toss, die roll, number of cars in a house hold
- P (E) = 1 / N given N possibility events assuming all events equally likely
Continuos = infinite set of values
- Person's height, amount of rainfall in a day
- P(you are 1.77m tall) = 0 unless you round people's height
- Instead, better to measure intervals, e.g. P(1.77 < h < 1.78)

## Counting sample points
Consider a coin flip S = {E<sub>H</sub>, E<sub>T</sub>}
Flip a coin three times
- Sampling with replacement
How many different arrangements are possible?
- Direct approach: list all the arrangements and count them:
HHH, HHT, HTH, HTT, THH, THT, TTH, TTT
How many arragements begin or end with a HEAD? #(S<sub>H??</sub> ∪ S<sub>??HH</sub>)
- Again: direct approach: counting
HHH, HHT, HTH, HTT, TTH, THH
Count: 6
We can also visualize the sample space as a tree.
Each branch represents a possible event.
Final branches represent all possible outcomes.

Clearly, given N tosses, total # of outcomes = 2^n

## Multiplication rule

## Permutations
A bag has three balls: red, green, blue
You draw each of the balls in turn without replacement (you keep the ball)
How many possible draws are there?

- First draw: three possible options
Red, green or blue
- Second draw: two options
- Third draw: one options
3 * 2 * 1 = 6 = 3!

- Permutations
Given a set of elements, all distinct arrangements of these elements are called permutations of a set.
The number of ways you can arrange N elements out of N possibilities is ...
P<sub>n, n</sub> = N x (N-1) x (N-2) x ... x 2 x 1 = N!
N! = "N factorial" = a product of all numbers from N down to 1
- Assumes N is non-negative integer
- By definition 0! = 1

General Formula for Permutations:
Suppose there are n = 5 balls (RGBWO) and you draw k = 3 without replacement.
How many possible arrangments are there?
5 possibilities on first draw,
4 possibilites on the second
3 possibilities on the third,
so 5 x 4 x 3 = 60

But how to express it in terms of n and k?
(5 x 4 x 3) = (5 x 4 x 3 x 2 x 1) / (2 x 1) = 5! / 2! = n! / (n - k)!

Thus, the number of permutations of k elements out of n is
P<sub>n, k</sub> = n! / (n - k)!

## Permutation examples
Number of unique 5-letter words that can be arranged from letters {a, b, c, d, e}.
5<sub>5</sub> = 3125
We have replacement here.

But if each letter appears exactly once:
5! = 120

3 letter words, each letter appeare once:
P<sub>5, 3</sub> = 5! / (5 - 3)! = 60

### Birthday Problem
Given a room with k people, what is the probability that at least two people have the same birthday?
- Ignore leap years, seasonal variations.
- Obvious: if k > 365, P = 1, so assume k <= 365
- Number of arrangments when each birthday is different P<sub>365, k</sub>
- Total number of arrangments = 365<sup>k</sup>
P(no two people have same birthday) = P<sub>365, k</sub> / 365<sup>k</sup>
P(two + people have same birthday) = 1 - P<sub>365, k</sub>/365<sup>k</sup>

## Demo birthday

## Combinatorics
Combinatorics is a branch of mathematics concerning the study of finite or countable discrete structures.
- Given a bag of balls B = {R, G, B, W, O}
If we pull out 2 balls after replacement, the number of arrangments is
P<sub>5, 2</sub> = 5! / 3! = 20

What if we dont care about order, i.e. we consider {R, B} and {B, R} to be the same pick?
How can we calculate the number of unique picks now?
Problem: find the number of subsets of a set (remember, order doesnt matter!)

----

Give a bag of balls B = {R, G, B, W, O}
The total number of picks (including duplicate sets) is P<sub>5, 2</sub>
- And each of the picks has 2! possible arrangments
C<sub>n, k</sub> = P<sub>n, k</sub> / k! = n! / k!(n - k)!

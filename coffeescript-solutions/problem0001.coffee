###
Problem 1:

If we list all the natural numbers below 10 that are multiples 
of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 
23.

Find the sum of all the multiples of 3 or 5 below 1000.
###

require './lib/array-tools'
require './lib/number-tools'

sumOfMultiplesBelow = (maximum, factors) ->
  multiplesBelow(maximum, factors).sum()

multiplesBelow = (maximum, factors) ->
  i for i in [2...maximum] when i.hasFactorIn factors

console.log "#{ sumOfMultiplesBelow 1000, [3, 5] }"
# => 233168

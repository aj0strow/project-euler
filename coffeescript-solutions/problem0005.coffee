###
2520 is the smallest number that can be divided by each of the numbers from 
1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the 
numbers from 1 to 20?
###

require './lib/primes'
require './lib/array-tools'

# Answer must be a multiple of the product of the prime numbers in the range.

divisibleByRange = (range) ->
  primesProduct = (n for n in primeNumbersBelow( Math.max range... ) when n in range)
    .reduce (x, y) -> x * y
  num = primesProduct; multiplier = 1
  ( num = primesProduct * multiplier++ until num.hasFactors range ).last()

Number::hasFactors = (array) ->
  for num in array
    return false unless this % num == 0
  true
    
console.log divisibleByRange [1..20]
# => 232792560

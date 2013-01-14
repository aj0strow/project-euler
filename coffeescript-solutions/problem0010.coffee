###
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
###

require './lib/primes'
require './lib/array-tools'

sumOfPrimesBelow = (num) ->
  primeNumbersBelow(num)
  
console.log sumOfPrimesBelow(10)

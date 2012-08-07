###
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
###

require './lib/primes'

largestPrimeFactorOf = (value) ->
  primeFactorsOf(value).pop -1

primeFactorsOf = (value) ->
  value.factorsIn primeNumbersBelow value.sqrt()
  
console.log largestPrimeFactorOf 600851475143
# => 6857
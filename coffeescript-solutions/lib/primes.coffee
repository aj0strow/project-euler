require './number-tools'

global.primeNumbersBelow = (maximum) ->
  primes = []
  primes.push num for num in [2...maximum] when not num.hasFactorIn primes
  primes
  
global.primeNumbers = (amount) ->
  primes = []; num = 2
  while primes.length < amount
    primes.push num unless num.hasFactorIn primes
    num++
  primes

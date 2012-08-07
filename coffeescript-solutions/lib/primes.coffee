require './number-tools'

global.primeNumbersBelow = (maximum) ->
  primes = []
  primes.push num for num in [3...maximum] when not num.hasFactorIn(primes)
  primes
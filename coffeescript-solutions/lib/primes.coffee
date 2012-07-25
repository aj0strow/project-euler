prime_numbers_below = (maximum) ->
  primes = []
  numbers = [2...maximum]
  primes.push prime for prime in [2..100] when 
  primes = ( true for i in [1...maximum] )
  (i for i in [0...maximum] by 3)

primes.push i for i in [2..100] when not (j for j in primes when i % j == 0).length
console.log prime_numbers_below(6.12)

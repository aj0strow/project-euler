###
The sum of the squares of the first ten natural numbers is,
  1^2 + 2^2 + ... + 10^2 = 385
  
The square of the sum of the first ten natural numbers is,
  (1 + 2 + ... + 10)2 = 552 = 3025
  
Hence the difference between the sum of the squares of the first ten natural 
numbers and the square of the sum is 3025 = 385 = 2640.

Find the difference between the sum of the squares of the first one hundred 
natural numbers and the square of the sum.
###

require './lib/array-tools'

differenceOfSquaresAndSums = (range) ->
  Math.abs sumOfSquares(range) - squareOfSums(range)

sumOfSquares = (range) ->
  ( range.map (num) -> num * num ).sum()
  
squareOfSums = (range) ->
  range.sum() * range.sum()

console.log differenceOfSquaresAndSums [1..100]
# => 25164150
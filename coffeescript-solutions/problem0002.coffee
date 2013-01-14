###
Each new term in the Fibonacci sequence is generated by adding the previous two 
terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed 
four million, find the sum of the even-valued terms.
###

require './lib/array-tools'

sumOfEvenFibonacciNumbersBelow = (maximum_value) ->
  (num for num in fibonacciNumbersBelow(maximum_value) when num%2==0).sum()

fibonacciNumbersBelow = (maximum_value) ->
  a = 1; b = 2
  fibonacciNums = []
  until a > maximum_value
    fibonacciNums.push a
    [a, b] = [b, a+b]
  fibonacciNums
    
console.log sumOfEvenFibonacciNumbersBelow 4000000
# => 4613732
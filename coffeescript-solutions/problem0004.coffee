###
A palindromic number reads the same both ways. The largest palindrome made from the 
product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
###

Number::isPalindrome = ->
  @toString().reverse() is @toString()

String::reverse = ->
  @split('').reverse().join('')

largestPalindromeFromNDigitProduct = (digits) ->
  for product in nDigitProducts(digits).sort( (a,b) -> b-a )
    return product if product.isPalindrome()

nDigitProducts = (digits) ->
  vals = []
  for val in nDigitNumbers digits
    vals = vals.concat (i*val for i in nDigitNumbers digits )
  vals
  
nDigitNumbers = (digits) ->
  [ Math.pow(10, digits-1)...Math.pow(10, digits) ]

console.log largestPalindromeFromNDigitProduct 3
# => 906609
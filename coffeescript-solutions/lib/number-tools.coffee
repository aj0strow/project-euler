Number::factors = ->
  @factorsIn [1..this]

Number::factorsIn = (array) ->
  (num for num in array when @hasFactor num)
  
Number::hasFactor = (factor) ->
  this % factor == 0


Number::hasFactorIn = (factors) ->
  for factor in factors
    return true if @hasFactor(factor)
  false
  
Number::sqrt = ->
  Math.sqrt this

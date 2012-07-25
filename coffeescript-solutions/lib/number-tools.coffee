Number::hasFactorIn = (factors) ->
  for factor in factors
    return true if this % factor == 0
  false
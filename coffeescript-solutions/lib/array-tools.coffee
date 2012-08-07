Array::sum = -> 
  @reduce (x, y) -> x + y

Array::first = ->
  @[ 0 ]
  
Array::last = ->
  @[ @.length-1 ]

Array::remove = (element) -> 
  @[ t..t ] = [] while ~ t = @indexOf element
  this

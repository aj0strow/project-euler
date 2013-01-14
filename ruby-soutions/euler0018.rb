=begin
 
----------- Problem 18 ------------
 
By starting at the top of the triangle below and moving to adjacent numbers on the 
row below, the maximum total from top to bottom is 23.

   3
  7 4
 2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle in the text file.

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying 
every route. However, Problem 67, is the same challenge with a triangle containing 
one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)
 
=end

# Helper function to convert a string-array
# to an int-array (typecast the array)

def toInts(arr)
  for i in 0...arr.length
    arr[i] = arr[i].to_i
  end
  return arr
end

# put the text triangle into a 2-d array

def populateArray()
  triangle = Array.new
  IO.foreach('euler0018.txt') do |input|
    data = toInts(input.split(' '))
    triangle.push(data)
  end
  return triangle
end

# get the max of two ints

def max(a, b)
  if a >= b
    return a
  else
    return b
  end
end

# Find the path with the largest sum by aggregating up the
# higher values (avoids brute force method)
def findMax(triangle)
  for row in (0...triangle.length-1).to_a.reverse
    for index in 0...triangle[row].length
      # Add bigger child value to the parent value in the row above
      triangle[row][index] += max(triangle[row+1][index], triangle[row+1][index+1])
    end
  end
  # return the aggregated largest total, now at the top of the triangle
  return triangle[0][0]
end

# answer to problem

puts findMax( populateArray )





=begin
----------- Problem 15 ------------
 
 Starting in the top left corner of a 2×2 grid, there are 6 routes (without backtracking) to the bottom right corner.

How many routes are there through a 20×20 grid?


=end

# Everything is put in an object to handle gathering data.

class Grid
  
  def initialize(size)
    length = size + 1
    @grid = Array.new(length) do
      Array.new(length)
    end
  end
  
  # First Approach: functionally/recursively count
  
  def recursiveCount(x, y)
    return 1 if x==0 || y==0
    return recursiveCount(x-1, y) + recursiveCount(x, y-1)
  end
  
  def recursiveCountRoutes()
    size = @grid.length-1
    return recursiveCount(size, size)
  end
  
  # Best Approach: memoize key points and expand data model
  
  def memoizedCount(x, y)
    return 1 if x==0 || y==0
    # Starting at the bottom right corner and
    # traversing up and left
    leftVal = @grid[x-1][y]
    upVal = @grid[x][y-1]
    unless @grid[x][y]
    # To make sure we dont set the value again
      if leftVal && upVal
        @grid[x][y] = leftVal + upVal
      elsif leftVal
        @grid[x][y] = leftVal + memoizedCount(x, y-1)
      elsif upVal
        @grid[x][y] = upVal + memoizedCount(x-1, y)
      elsif x==y 
      # Optimization: Count is the same going either 
      #               direction cause its square
        @grid[x][y] = 2 * memoizedCount(x-1, y)
      else
        @grid[x][y] = memoizedCount(x-1, y) + memoizedCount(x, y-1)
      end
    end
  end
  
  def memoizedCountRoutes()
    size = @grid.length-1
    for i in 2..size
      memoizedCount(i, i)
    end
    return @grid[size][size]
  end
  
  # For Debugin'

  def print()
    length = @grid.length
    copy = Array.new(length) { Array.new(length) }
    str = ""
    for x in 0...length()
      for y in 0...length()
        str = @grid[x][y].to_s if @grid[x][y]
        copy[x][y] = "." * (3-str.length) + str
        str = ""
      end
    end
    for i in 0...copy.length
      p copy[i]
    end
  end
  
  # Hide helper methods

  private :recursiveCount, :memoizedCount

end

 
#To test the methods

def dataCheck(upperBound)
  puts "The following values should match:"
  for i in 2..upperBound
    mGrid = Grid.new(i)
    rGrid = Grid.new(i)
    puts "  #{i}: #{rGrid.recursiveCountRoutes} = #{mGrid.memoizedCountRoutes}"
  end
end

def speedTest(size)
  require "benchmark"
  
  # Time the recursive counting method
  recursiveTime = Benchmark.realtime do
    grid = Grid.new(size)
    grid.recursiveCountRoutes
  end
  
  # Time the memoized counting method
  memoizedTime = Benchmark.realtime do
    grid = Grid.new(size)
    grid.memoizedCountRoutes
  end
  
  # Print Results
  puts "Speed Test for #{size}x#{size} grid: "
  puts "  Recursive  =  #{recursiveTime} ms"  
  puts "  Memoized   =  #{memoizedTime} ms"  
end

# Answer to the question

#dataCheck(8)
speedTest(5)

grid = Grid.new(20)
puts grid.memoizedCountRoutes



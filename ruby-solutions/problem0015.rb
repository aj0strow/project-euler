=begin

  Problem 15:

  Starting in the top left corner of a 2 x 2 grid, and only being able to 
  move to the right and down, there are exactly 6 routes to the bottom 
  right corner.

  How many such routes are there through a 20 x 20 grid?

=end

class Grid
  
  @@memoized = {}
  
  class << self
    
    def num_paths(x, y)
      x, y = y, x if x > y
      if x == 0 then 1 else
        @@memoized["#{x} #{y}"] ||= num_paths(x - 1, y) + num_paths(x, y - 1)
      end
    end
    
  end
  
end

Grid.num_paths(20, 20)
# => 137846528820

# Benchmark
# 0.000000   0.000000   0.000000   (0.000788)

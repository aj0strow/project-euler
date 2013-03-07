=begin

  Problem 14:
  
  The following iterative sequence is defined for the set of positive 
  integers:

  n -> n/2     (n is even)
  n -> 3n + 1  (n is odd)

  Using the rule above and starting with 13, we generate the following 
  sequence:

  13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
  
  It can be seen that this sequence (starting at 13 and finishing at 1) 
  contains 10 terms. Although it has not been proved yet (Collatz Problem), 
  it is thought that all starting numbers finish at 1.

  Which starting number, under one million, produces the longest chain?

  NOTE: Once the chain starts the terms are allowed to go above one 
  million.

=end

class Collatz
  
  @@memoized = { 1 => 1 }
  
  class << self
    
    def count_from(n)
      @@memoized[n] ||= count_from(next_value n) + 1
    end
    
    def next_value(n)
       n.even? ? n / 2 : 3 * n + 1
    end
    
  end
      
end

def longest_collatz_seq_in(starting_values)
  starting_values.max_by &Collatz.method(:count_from)
end

longest_collatz_seq_in(1...1_000_000)
# => 837799

# Benchmark
# 6.770000   0.120000   6.890000   (6.887069)

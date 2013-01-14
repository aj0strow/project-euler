=begin
----------- Problem 14 ------------
 
 The following iterative sequence is defined for the set of positive integers:

 n → n/2 (n is even)
 n → 3n + 1 (n is odd)

 Using the rule above and starting with 13, we generate the following sequence:
 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

 It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
 Although it has not been proved yet (Collatz Problem), it is thought that all starting 
 numbers finish at 1.

 Which starting number, under one million, produces the longest chain?

 NOTE: Once the chain starts the terms are allowed to go above one million.

=end

## Unused methods

def countSequence(n, count)
  if(n == 1)
    return count
  elsif(n%2==0)
    return countSequence(n/2, count+1)
  else
    return countSequence(n*3+1, count+1)
  end
end

def countSequenceNew(num)
  seq = Sequences.new
  return seq.get(num)
end

def countSequenceNormal(num) 
  count = 1
  until num==1
    count += 1
    if(num%2==0)
      num /= 2
    else
      num = num * 3 + 1
    end
  end
  return count
end

# =========================== #

class Sequences
  
  def initialize()
    @values = Array.new
    @values[1] = 1
  end
  
  def get(n)
    num = n
    count = 0
    until num < @values.length
      count += 1
      if(num%2==0)
        num /= 2
      else
        num = num * 3 + 1
      end
    end
    count += @values[num]
    @values[n] = count
    return count
  end
  
  def set(n)
    val = nextN(n)
    if @values[val] == nil
      set(val); set(n)
    else
      @values[n] = 1 + @values[val]
    end
  end
  
  def nextN(n)
    if(n%2==0)
      return n/2
    else
      return n*3+1
    end
  end
  
end

def findLongestSequence(largest)
  max = 0
  index = 0
  sequences = Sequences.new
  for i in 1...largest
    length = sequences.get(i)
    puts i.to_s + " =>  " + length.to_s
    if length > max 
      max = length
      index = i 
    end
  end
  return index
end

# answer to problem

puts findLongestSequence(1_000_000)

=begin

----------- Problem 17 ------------

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there 
are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, 
how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of 
"and" when writing out numbers is in compliance with British usage.
 
=end

# Method maps key numbers to string representation

def lookup(num)
  case num
  when 1 
    return 'one'
  when 2 
    return 'two'
  when 3
    return 'three'
  when 4
    return 'four'
  when 5 
    return 'five'
  when 6
    return 'six'
  when 7
    return 'seven'
  when 8
    return 'eight'
  when 9
    return 'nine'
  when 10
    return 'ten'
  when 11 
    return 'eleven'
  when 12
    return 'twelve'
  when 13
    return 'thirteen'
  when 14 
    return 'fourteen'
  when 15 
    return 'fifteen'
  when 16
    return 'sixteen'
  when 17 
    return 'seventeen'
  when 18 
    return 'eighteen'
  when 19
    return 'nineteen'
  when 20
    return 'twenty'
  when 30 
    return 'thirty'
  when 40
    return 'forty'
  when 50
    return 'fifty'
  when 60
    return 'sixty'
  when 70
    return 'seventy'
  when 80
    return 'eighty'
  when 90
    return 'ninety'
  else
    return ''
  end
end

# Turn the number to a digit array

def numArray(num)
  ans = Array.new
  str = num.to_s
  for i in 0...str.length
    ans.push(str[i].to_i)
  end
  return ans
end

# Write out the number from the array version
# (recursive)

def writeNumber(arr)
  case arr.length
  when 4
    return "#{lookup(arr[0])}thousand#{writeNumber(arr[1...arr.length])}"
  when 3
    output = arr[0]==0 ? '' : "#{lookup(arr[0])}hundred"
    output += 'and' unless arr[-1]==0 && arr[-2]==0
    output += "#{writeNumber(arr[1...arr.length])}"
    return output
  when 2
    if arr[0]==0
      return "#{writeNumber( Array.new().push(arr[1]) )}"
    elsif arr[0]==1
      return lookup("#{arr[0]}#{arr[1]}".to_i)
    else
      return "#{lookup("#{arr[0]}0".to_i)}#{writeNumber( Array.new().push(arr[1]) )}"
    end
  when 1
    return lookup(arr[0])
  else
    return ''
  end
end

# Get the length of a word

def wordLength(num)
  arr = numArray(num)
  return writeNumber(arr).length
end

# Sum the lengths of the name of every number
# in the range

def countTotalLetters(range)
  total = 0
  for i in range
    total += wordLength(i)
  end
  return total
end

# Answer to problem

puts countTotalLetters(1..1000)





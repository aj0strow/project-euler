def digits(n)
  n.to_s.each_char.map(&:to_i)
end

def factorial(n)
  n == 0 ? 1 : (1..n).reduce(:*)
end

def proper_divisors(n)
  return [] if n < 2
  divisors = [ 1 ]
  sqrt = Math.sqrt(n)
  max = sqrt.floor
  if max == sqrt.ceil
    divisors.push(max)
    max -= 1
  end
  (2..max).each do |x|
    divisors.push(x, n / x) if n % x == 0
  end
  divisors  
end

def divisors(n)
  proper_divisors(n).push(n)
end
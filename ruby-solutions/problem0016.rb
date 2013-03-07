=begin

  Problem 16:

  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?

=end

def power_digit_sum(base, exp)
  (base ** exp).to_s.each_char.map(&:to_i).reduce(:+)
end

power_digit_sum(2, 1000)
# => 1366

# Benchmark
# 0.000000   0.000000   0.000000   (0.000289)

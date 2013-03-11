=begin

  Problem 16:

  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?

=end

require_relative 'lib/numbers'

def power_digit_sum(base, exp)
  digits(base ** exp).reduce(:+)
end

power_digit_sum(2, 1000)
# => 1366

# Benchmark
# 0.000000   0.000000   0.000000   (0.000289)

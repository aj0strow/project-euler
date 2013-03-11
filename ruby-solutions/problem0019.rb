=begin

  Problem 19:

  You are given the following information, but you may prefer to do some 
  research for yourself.

  * 1 Jan 1900 was a Monday
  * The folowing poem:
  
    Thirty days has September
    April, June and November
    All the rest have thirty-one
    Saving February alone
    Which has twenty-eight, rain or shine
    And on leap years, twenty-nine
    
  * A leap year occurs on any year evenly divisible by 4, but not on a 
    century unless it is divisible by 400.
    
  How many Sundays fell on the first of the month during the twentieth century 
  (1 Jan 1901 to 31 Dec 2000)?

=end

require 'date'

def sundays_on_first_between(start_date, end_date)
  start, stop = [start_date, end_date].map { |str| Date.parse(str) }
  (start..stop).count { |date| date.sunday? && date.day == 1 }
end

sundays_on_first_between('1 Jan 1901', '31 Dec 2000')
# => 171

# Benchmark
# 0.040000   0.000000   0.040000   (0.036929)

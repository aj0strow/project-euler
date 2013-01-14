=begin
 
----------- Problem 19 ------------
 
You are given the following information, but you may prefer to do some research for yourself.

    1 Jan 1900 was a Monday.
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is 
    divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 
31 Dec 2000)?

=end

# Find out if its a leap year

def leapYear?(year)
  bool = year % 4 == 0 && year % 100 != 0
  return year % 400 == 0 || bool
end

# Get the days in the month

def daysInMonth(month, leapYear)
  if month == 2
    return leapYear ? 29 : 28
  elsif [4,6,9,11].include?(month)
    return 30
  else
    return 31
  end
end

def nextDate(cal_date)
  date = cal_date;
  date[:day] += 1;
  if date[:day] > daysInMonth( date[:month], leapYear?(date[:year]) )
    date[:day] = 1; date[:month] += 1;
    if date[:month] > 12
      date[:month] = 1; date[:year] += 1;
    end
  end
  return date;
end

def finishDate? (date)
  return date[:day] == 31 && date[:month] == 12 && date[:year] == 2000;
end

date = {day: 1, month:1, year: 1900};
count = 1;
sundays = 0;

until finishDate?(date)
  date = nextDate(date);
  if(date[:day]==1 && count % 7 == 0) then puts date.to_s end
  if(date[:day] == 1 && count % 7 == 0 && date[:year] > 1900)
    sundays += 1;
  end
  count += 1;
end

puts sundays;





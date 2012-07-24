#  Problem 1:
#
#  If we list all the natural numbers below 10 that are multiples 
#  of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 
#  23.
#
#  Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples_below(maximum, factors):
    return sum( multiples_below(maximum, factors) )

def multiples_below(maximum, factors):
    return [i for i in range(2, maximum) if has_factor(i, factors)]

def has_factor(num, factors):
    for factor in factors:
        if num % factor == 0:
            return True
    return False

if __name__ == "__main__":
    print sum_of_multiples_below(1000, [3, 5])
    # >>> 233168
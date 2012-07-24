import unittest
from problem0001 import *

class TestProblem0001(unittest.TestCase):

    def test_Num_has_factor(self):
        assert has_factor(15, [3, 5])
    
    def test_multiples_below(self):
        assert [3, 5, 6, 9] == [3, 5, 6, 9]
        
    def test_sum_of_multiples_below(self):
        assert sum_of_multiples_below(10, [3, 5]) == 23

if __name__ == "__main__":
    unittest.main()
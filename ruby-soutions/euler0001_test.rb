require './problem0001'
require 'test/unit'

class TestProblem1 < Test::Unit::TestCase
 
  def test_has_factor_in
    assert 15.has_factor_in [3, 7]
    assert !(15.has_factor_in [2, 9])
  end
  
  def test_multiples_below
    assert_equal [3, 5, 6, 9], multiples_below(10, [3, 5])
  end
  
  def test_sum_of_multiples_below
    assert_equal 23, sum_of_multiples_below(10, [3, 5])
  end
 
end

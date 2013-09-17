require 'test_helper'

class LambdasTestCase < TestCase
  def generate_filtered_array(arr)
    even_checker = Rubeque::Lambdas::EvenChecker.new
    arr.select { |arr| even_checker.check.call(*arr) }
  end

  def test_lambda
    even_checker = Rubeque::Lambdas::EvenChecker.new
    given_value = generate_filtered_array [[2, 4], [1, 2], [8, 12]]
    assert_equal [[2, 4], [8, 12]], given_value
    assert_equal true, even_checker.check.call(42)
    given_value = generate_filtered_array [[2, 4], [2, 1], [8, 11]]
    assert_equal [[2, 4]], given_value
  end
end

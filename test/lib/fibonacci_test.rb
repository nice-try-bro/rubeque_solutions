require 'test_helper'

class FibonacciTestCase < TestCase
  def test_fibo_finder
    fibo_finder = Rubeque::Fibonacci::FiboFinder.new
    assert_equal 0, fibo_finder.find(0)
    assert_equal 1, fibo_finder.find(1)
    assert_equal 3, fibo_finder.find(4)
    assert_equal 13, fibo_finder.find(7)
    assert_equal 55, fibo_finder.find(10)
  end
end

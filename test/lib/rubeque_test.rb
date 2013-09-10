require 'test_helper'

class RubequeTest < TestCase
  def setup
    @reverser = Rubeque::ReverseEachWord::Reverser.new
    @foo = Rubeque::ClassTest::Foo.new
    @bar = Rubeque::ClassTest::Bar.new
    @fib_generator = Rubeque::Fibonacci::FiboFinder.new
    @rand_generator = Rubeque::Randomness::RandGenerator.new
  end

  def test_reversing
    assert_equal "olleH ,ereht dna woh era ?uoy",
	   @reverser.reverse_each_word("Hello there, and how are you?")
  end

  def test_classes
    assert_equal "bar", @bar.say_name
  end

  def test_fibbonacci
    assert_equal 0, @fib_generator.find(0)
    assert_equal 1, @fib_generator.find(1)
    assert_equal 3, @fib_generator.find(4)
    assert_equal 13, @fib_generator.find(7)
    assert_equal 55, @fib_generator.find(10)
  end

  def test_random_generator
    #NOTE: maybe those aquirings shouldn't be there
    a = @rand_generator.generate
    b = @rand_generator.generate
    c = @rand_generator.generate
    d = @rand_generator.generate
    assert_equal true, (a > 99 && a < 501)
    assert_equal true, (b > 99 && b < 501)
    assert_equal true, (c > 99 && c < 501)
    assert_equal true, (d > 99 && d < 501)
  end
end

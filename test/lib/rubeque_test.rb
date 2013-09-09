require 'test_helper'

class RubequeTest < Minitest::Test
  def setup
    @reverser = Rubeque::ReverseEachWord::Reverser.new
    @foo = Rubeque::ClassTest::Foo.new
    @bar = Rubeque::ClassTest::Bar.new
    @fib_generator = Rubeque::Fibonacci::FiboFinder.new
  end

  def test_reversing
    assert_equal "olleH ,ereht dna woh era ?uoy",
	   @reverser.reverse_each_word("Hello there, and how are you?")
  end

  def test_classes
    assert_equal @bar.say_name, "bar"
  end

  def test_fibbonacci
    assert_equal 0, @fib_generator.find(0)
    assert_equal 1, @fib_generator.find(1)
    assert_equal 3, @fib_generator.find(4)
    assert_equal 13, @fib_generator.find(7)
    assert_equal 55, @fib_generator.find(10)
  end
end

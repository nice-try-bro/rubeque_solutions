require 'test_helper'

class RubequeTest < TestCase
  def setup
    @reverser = Rubeque::ReverseEachWord::Reverser.new
    @foo = Rubeque::ClassTest::Foo.new
    @bar = Rubeque::ClassTest::Bar.new
    @fib_generator = Rubeque::Fibonacci::FiboFinder.new
    @rand_generator = Rubeque::Randomness::RandGenerator.new
    @hash_min_finder = Rubeque::HashLittleValue::HashMinFinder.new
    #@regex_applicator = Rubeque::RegularExpressions::RegExApplicator.new
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
    assert a > 99 && a < 501
    assert b > 99 && b < 501
    assert c > 99 && c < 501
    assert d > 99 && d < 501
  end

  def test_hash_little_value
    assert_equal "j", @hash_min_finder.key_for_min_value({"k" => 2, "h" => 3, "j" => 1})
    assert_equal "z", @hash_min_finder.key_for_min_value({"o" => 0, "z" => -2, "j" => 1})
    assert_equal nil, @hash_min_finder.key_for_min_value({})
  end

  def test_regex
    assert_equal ["john@mail.com", "jane@mail.com"], @regex_applicator.apply_regex("john@mail.com to jane@mail.com")
    assert_equal ["why@chunkybacon.com"], @regex_applicator.apply_regex("why@ @chunkybacon.com why@chunkybacon.com")
    assert_equal [], @regex_applicator.apply_regex("why @ @ why@chunkybacon")
  end
end

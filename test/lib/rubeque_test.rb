require 'test_helper'

class RubequeTest < TestCase
  def setup
    @reverser = Rubeque::ReverseEachWord::Reverser.new
    @foo = Rubeque::ClassTest::Foo.new
    @bar = Rubeque::ClassTest::Bar.new
    @fib_generator = Rubeque::Fibonacci::FiboFinder.new
    @rand_generator = Rubeque::Randomness::RandGenerator.new
    @hash_min_finder = Rubeque::HashLittleValue::HashMinFinder.new
    @regex_applicator = Rubeque::RegularExpressions::RegExApplicator.new
  end

  def test_regex
    assert_equal ["john@mail.com", "jane@mail.com"], @regex_applicator.apply_regex("john@mail.com to jane@mail.com")
    assert_equal ["why@chunkybacon.com"], @regex_applicator.apply_regex("why@ @chunkybacon.com why@chunkybacon.com")
    assert_equal [], @regex_applicator.apply_regex("why @ @ why@chunkybacon")
  end
end

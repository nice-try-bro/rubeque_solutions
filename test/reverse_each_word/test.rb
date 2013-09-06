require 'minitest/autorun'
require "./lib/reverse_each_word/reverser.rb"

class TestReverseEachWord < Minitest::Test
  def setup
    @reverser = Reverser.new
  end

  def test_reversing
    assert_equal "olleH ,ereht dna woh era ?uoy",
	   @reverser.reverse_each_word("Hello there, and how are you?")
  end
end

require 'test_helper'

class ReverseEachWordTestCase < TestCase
  def test_reversing
    reverser = Rubeque::ReverseEachWord::Reverser.new
    expected_string = "olleH ,ereht dna woh era ?uoy"
    given_string = "Hello there, and how are you?"
    assert_equal expected_string, reverser.reverse_each_word(given_string)
  end
end

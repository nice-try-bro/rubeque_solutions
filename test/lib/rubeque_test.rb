require 'test_helper'
require 'rubeque'

class RubequeTest < Minitest::Test
  def setup
    @reverser = Reverser.new
  end

  def test_reversing
    assert_equal "olleH ,ereht dna woh era ?uoy",
	   @reverser.reverse_each_word("Hello there, and how are you?")
  end
end

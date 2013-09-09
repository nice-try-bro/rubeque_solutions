require 'test_helper'
require 'rubeque'

class RubequeTest < Minitest::Test
  def setup
    @reverser = Reverser.new
    @foo = ClassTest::Foo.new
    @bar = ClassTest::Bar.new
  end

  def test_reversing
    assert_equal "olleH ,ereht dna woh era ?uoy",
	   @reverser.reverse_each_word("Hello there, and how are you?")
  end

  def test_classes
    assert_equal @bar.say_name, "bar"
  end
end

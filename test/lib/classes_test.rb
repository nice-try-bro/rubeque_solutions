require 'test_helper'

class ClassesTest < TestCase
  def test_classes
    bar = Rubeque::ClassTest::Bar.new
    assert_equal "bar", bar.say_name
  end
end

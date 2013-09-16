require 'test_helper'

class RectangleAreaTestCase < TestCase
  def testPointCreation
    point = Point.new 1, 2
    assert_equal 1, point.x
    assert_equal 2, point.y
  end
end

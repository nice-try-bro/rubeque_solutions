require 'test_helper'

class RectangleAreaTestCase < TestCase
  def test_point_creation
    point = Rubeque::RectangleArea::Point.new(1, 2)
    assert_equal 1, point.x
    assert_equal 2, point.y
  end
end

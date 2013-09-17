require 'test_helper'

class RectangleAreaTestCase < TestCase
  def test_point_creation
    point = Rubeque::RectangleArea::Point.new 1, 2
    assert_equal 1, point.x
    assert_equal 2, point.y
  end

  def test_rectangle_creation
    p1 = Rubeque::RectangleArea::Point.new 0, 0
    p2 = Rubeque::RectangleArea::Point.new 3, 4
    rectangle = Rubeque::RectangleArea::Rectangle.new p1, p2
    accert_equal p1, rectangle.point1
    accert_equal p2, rectangle.point2
  end
end

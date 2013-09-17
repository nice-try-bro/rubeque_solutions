require 'test_helper'

class RectangleAreaTestCase < TestCase
  def test_point_creation
    point = Rubeque::RectangleArea::Point.new 1, 2
    assert_equal 1, point.x
    assert_equal 2, point.y
  end

  def test_rectangle_creation
    point_1 = Rubeque::RectangleArea::Point.new 0, 0
    point_2 = Rubeque::RectangleArea::Point.new 3, 4
    rectangle = Rubeque::RectangleArea::Rectangle.new point_1, point_2
    assert_equal point_1, rectangle.point1
    assert_equal point_2, rectangle.point2
  end

  def test_rectangle_area
    point_1 = Rubeque::RectangleArea::Point.new 0, 0
    point_2 = Rubeque::RectangleArea::Point.new 3, 4
    rectangle = Rubeque::RectangleArea::Rectangle.new point_1, point_2
    expected_area = (point_2.x - point_1.x) * (point_2.y - point_1.y)
    assert_equal expected_area, rectangle.area
  end
end

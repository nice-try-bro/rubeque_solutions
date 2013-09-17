require 'test_helper'

class RectangleAreaTestCase < TestCase
  class ObjectCreator
    def createRectangle(x1, y1, x2, y2)
      point1 = Rubeque::RectangleArea::Point.new x1, y1
      point2 = Rubeque::RectangleArea::Point.new x2, y2
      Rubeque::RectangleArea::Rectangle.new point1, point2
    end
  end

  def setup
    @creator = ObjectCreator.new
  end

  def test_point_creation
    point = Rubeque::RectangleArea::Point.new 1, 2
    assert_equal 1, point.x
    assert_equal 2, point.y
  end

  def test_rectangle_creation
    rectangle = @creator.createRectangle 0, 2, 3, 4
    assert_equal 0, rectangle.point1.x
    assert_equal 2, rectangle.point1.y
    assert_equal 3, rectangle.point2.x
    assert_equal 4, rectangle.point2.y
  end

  def test_rectangle_area
    rectangle = @creator.createRectangle 2, 4, 7, -3
    assert_equal 20, rectangle.area
  end
end

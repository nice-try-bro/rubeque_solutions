module Rubeque
  module RectangleArea
    class Rectangle
      attr_reader :point1, :point2

      def initialize(point1, point2)
        @point1, @point2 = point1, point2
      end

      def area
        width = (@point2.x - @point1.x).abs
        height = (@point2.y - @point1.y).abs
        width * height
      end
    end
  end
end

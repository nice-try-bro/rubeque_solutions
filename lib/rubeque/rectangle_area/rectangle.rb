module Rubeque
  module RectangleArea
    class Rectangle
      attr_reader :point1, :point2

      def initialize(point1, point2)
        @point1, @point2 = point1, point2
      end
    end
  end
end

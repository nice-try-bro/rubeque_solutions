module Rubeque
  module Fibonacci
    class FiboFinder
      include Math

      def phi
        (1 + sqrt(5)) / 2
      end

      def find(n)
        #NOTE: maybe it would be better to use recursion/iteration
        ((phi ** n - (- phi) ** (- n)) / (2 * phi - 1)).round(0)
      end
    end
  end
end

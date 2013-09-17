module Rubeque
  module Lambdas
    class EvenChecker
      attr_reader :check

      def initialize
        @check = lambda { |*args| [*args].take(2).all? &:even? }
      end
    end
  end
end

module Rubeque
  module ConstantRule
    class Foo
      CONST = rand(100)

      def foo
        return ::CONST
      end
    end
  end
end

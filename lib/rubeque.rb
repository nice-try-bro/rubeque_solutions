module Rubeque
  autoload :Version, 'rubeque/version'

  module ClassTest
    autoload :Foo, 'rubeque/class_test/foo'
    autoload :Bar, 'rubeque/class_test/bar'
  end

  module ReverseEachWord
    autoload :Reverser, 'rubeque/reverse_each_word/reverser'
  end

  module Fibonacci
    autoload :FiboFinder, 'rubeque/fibonacci/fibo_finder'
  end

  module Randomness
    autoload :RandGenerator, 'rubeque/randomness/rand_generator'
  end

  module HashLittleValue
    autoload :HashMinFinder, 'rubeque/hash_little_value/hash_min_finder'
  end

  module RegularExpressions
    autoload :RegExApplicator, 'rubeque/regular_expressions/regex_applicator'
  end

  module LotteryNumbers
    autoload :LotteryNumberPicker, 'rubeque/lottery_numbers/lottery_number_picker'
  end

  module MethodActing
    autoload :MethodActer, 'rubeque/method_acting/method_acter.rb'
  end

  module RectangleArea
    autoload :Point, 'rubeque/rectangle_area/point'
    autoload :Rectangle, 'rubeque/rectangle_area/rectangle'
  end

  module ConstantRule
    autoload :Foo, 'rubeque/constant_rule/foo'
  end

  module Lambdas
    autoload :EvenChecker, 'rubeque/lambdas/even_checker'
  end
end

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
end

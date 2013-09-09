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
end

module Rubeque
  module ReverseEachWord
    class Reverser
      def reverse_each_word(text)
        text.split.map(&:reverse).join(' ')
      end
    end
  end
end

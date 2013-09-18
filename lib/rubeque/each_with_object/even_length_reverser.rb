module Rubeque
  module EachWithObject
    class EvenLengthReverser
      def perform(sentences)
        sentences.compact.each_with_object([]) do |sentence, arr|
          arr << sentence.reverse if sentence.length.even?
        end
      end
    end
  end
end

module Rubeque
  module RegularExpressions
    class RegExApplicator
      def apply_regex(sentence)
        sentence.scan(/[^ ]+\@[^ ]+\.[^ ]+/)
      end
    end
  end
end

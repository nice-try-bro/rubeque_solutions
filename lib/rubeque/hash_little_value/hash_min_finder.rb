module Rubeque
  module HashLittleValue
    class HashMinFinder
      def key_for_min_value(hash)
        hash.key(hash.values.min)
      end
    end
  end
end

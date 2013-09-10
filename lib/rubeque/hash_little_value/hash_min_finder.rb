module Rubeque
  module HashLittleValue
    class HashMinFinder
      def key_for_min_value(hash)
        hash[hash.keys.min]
      end
    end
  end
end

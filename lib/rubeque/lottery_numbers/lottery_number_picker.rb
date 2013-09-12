module Rubeque
  module LotteryNumbers
    class LotteryNumberPicker
      def pick
        (1..500).to_a.shuffle.take 5
      end
    end
  end
end

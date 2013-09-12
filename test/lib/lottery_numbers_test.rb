require 'test_helper'

class LottryNumbersTestCase < TestCase
  def test_picking_lottery_numbers
    lot_num_picker = Rubeque::LotteryNumbers::LotteryNumberPicker.new
    week1 = lot_num_picker.pick
    week2 = lot_num_picker.pick
    assert (week1.length == 5 && week2.length == 5)
    assert (week1.sort != week2.sort)
  end
end

require 'test_helper'

class HashTestCase < TestCase
  def test_hash_key_for_min_val
    hash_min_finder = Rubeque::HashLittleValue::HashMinFinder.new
    assert_equal "j", hash_min_finder.key_for_min_value({"k" => 2, "h" => 3, "j" => 1})
    assert_equal "z", hash_min_finder.key_for_min_value({"o" => 0, "z" => -2, "j" => 1})
    assert_equal nil, hash_min_finder.key_for_min_value({})
  end
end

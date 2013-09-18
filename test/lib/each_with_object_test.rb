require 'test_helper'

class EachWithObjectTestCase < TestCase
  def test_reversing_if_even_length
    even_length_reverser = Rubeque::EachWithObject::EvenLengthReverser.new
    given_array = ["cat", "dog", "bird", "fish"]
    expected_array = ["drib", "hsif"]
    assert_equal expected_array, even_length_reverser.perform(given_array)
    given_array = ["why", "chunky", nil, "lucky", "stiff"]
    expected_array = ["yknuhc"]
    assert_equal expected_array, even_length_reverser.perform(given_array)
    given_array = ["rewsna", "hitch hiker", "si", "guide", "galaxies ", "24"]
    expected_array = ["answer", "is", "42"]
    assert_equal expected_array, even_length_reverser.perform(given_array)
  end
end

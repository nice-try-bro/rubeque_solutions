require 'test_helper'

class RegularExpressionsTestCase < TestCase
  def test_regex
    regex_applicator = Rubeque::RegularExpressions::RegExApplicator.new
    expected_array = ["john@mail.com", "jane@mail.com"]
    actual_array = regex_applicator.apply_regex("john@mail.com to jane@mail.com")
    assert_equal expected_array, actual_array
    expected_array = ["why@chunkybacon.com"]
    actual_array = regex_applicator.apply_regex("why@ @chunkybacon.com why@chunkybacon.com")
    assert_equal expected_array, actual_array
    assert_equal [], regex_applicator.apply_regex("why  @ why@chunkybacon")
  end
end

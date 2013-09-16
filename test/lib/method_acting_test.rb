require 'test_helper'

class MethodActingTestCase < TestCase
  def test_method_names
    method_acter = Rubeque::MethodActing::MethodActer.new
    assert_equal :dogs. method_acter.dogs
    assert_equal :cats. method_acter.cats
    assert_equal :chunky_bacon. method_acter.chunky_bacon
  end
end

require 'test_helper'

class MethodActingTestCase < TestCase
  def test_method_names
    method_actor = Rubeque::MethodActing::MethodActor.new
    assert_equal :dogs. method_actor.dogs
    assert_equal :cats. method_actor.cats
    assert_equal :chunky_bacon. method_actor.chunky_bacon
  end
end

require 'test_helper'

class ConstantRuleTestCase < TestCase
  def set_const
    $CONST = rand
  end

  def test_constant_call
    set_const
    foo = Rubeque::ConstantRule::Foo.new
    assert_equal $CONST, foo.foo
  end
end

require 'test_helper'

class ConstantRuleTestCase < TestCase
  ::CONST = rand

  def test_constant_call
    foo = Rubeque::ConstantRule::Foo.new
    assert_equal ::CONST, foo.foo
  end
end

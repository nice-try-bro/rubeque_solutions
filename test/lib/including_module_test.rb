require 'test_helper'

class IncludingModulesTestCase < TestCase
  def test_module_variable
    c = Rubeque::IncludingModules::C.new
    assert_equal "b", c.name
    d = Rubeque::IncludingModules::D.new
    assert_equal "b", d.name
  end
end

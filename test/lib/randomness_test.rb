require 'test_helper'

class RandomnessTest < TestCase
  def test_random_generator
    rand_generator = Rubeque::Randomness::RandGenerator.new
    #NOTE: maybe those aquirings shouldn't be there
    a = rand_generator.generate
    b = rand_generator.generate
    c = rand_generator.generate
    d = rand_generator.generate
    assert a > 99 && a < 501
    assert b > 99 && b < 501
    assert c > 99 && c < 501
    assert d > 99 && d < 501
  end
end

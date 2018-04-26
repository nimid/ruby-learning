require 'test/unit'

def twice(f, x)
  f.call f.call x
end

class HigherOrderFunctionTest < Test::Unit::TestCase
  def test_
    add3 = ->(x) { x + 3 }

    actual = twice add3, 7

    assert_equal 13, actual
  end
end

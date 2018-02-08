require 'test/unit'

class A
  def method
    'Class A'
  end
end

class B
  def method
    'Class B'
  end
end

class C
  def different_method_name
    'Class C'
  end
end

def test(object)
  object.method
end

class DuckTypingTest < Test::Unit::TestCase
  def test_duck_typing
    assert_equal('Class A', test(A.new))
    assert_equal('Class B', test(B.new))
    assert_raise ArgumentError do
      test(C.new)
    end
  end
end

require 'test/unit'

class TimesTest < Test::Unit::TestCase
  def test_times_using_do_end_block
    number = 0

    10.times do
      number += 1
    end

    assert_equal(10, number)
  end

  def test_times_using_curly_brace
    number = 0

    10.times { number += 1 }

    assert_equal(10, number)
  end

  def test_times_one_time
    number = 0

    1.times { number += 1 }

    assert_equal(1, number)
  end

  def test_times_zero_time
    number = 0

    0.times { number += 1 }

    assert_equal(0, number)
  end

  def test_times_negative
    number = 0

    -1.times { number += 1 }

    assert_equal(0, number)
  end

  def test_times_with_defining_variable
    number = 0

    7.times do |i|
      number += i
    end

    assert_equal(21, number)
  end

  def test_times_seven_times_the_begining_is_zero_and_ending_is_six
    array = []

    7.times do |i|
      array.push(i)
    end

    assert_equal([0, 1, 2, 3, 4, 5, 6].to_s, array.to_s)
  end
end

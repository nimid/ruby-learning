require 'test/unit'

class ConfigurationFileTest < Test::Unit::TestCase
  def setup
    @actual = Hash[*File.read('config.txt').delete('"').split(/[= \n]+/)]
  end

  def test_config_foo
    assert_equal 'bar', @actual['foo']
  end

  def test_config_double_quote
    assert_equal 'test_double_quote', @actual['double_quote']
  end

  def test_config_single_quote
    assert_equal "'test-single-quote'", @actual['single_quote']
  end

  def test_config_number
    assert_equal '1', @actual['number']
  end

  def test_config_url
    assert_equal 'https://abc.def.ghi', @actual['url']
  end
end

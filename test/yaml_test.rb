require 'yaml'
require 'test/unit'

class YamlTest < Test::Unit::TestCase
  def test_yaml
    yaml = YAML.load_file('yaml.yml')

    assert_equal 'Saroj', yaml['first-name']
    assert_equal 'Sangphongamphai', yaml['last-name']
  end
end

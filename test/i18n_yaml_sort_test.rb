require 'test_helper'
require 'active_support/all'

class I18nYamlSortTest < Minitest::Test 
  def test_that_it_has_a_version_number
    refute_nil ::I18nYamlSort::VERSION
  end

  def test_should_order_yml_alphabetical_order
    open(File.dirname(__FILE__) + '/moc/sample.yml') do |file|
      sorter = I18nYamlSort::Sorter.new(file)
      open(File.dirname(__FILE__) + '/moc/output.yml') do |expected_out|
        assert_equal expected_out.read, sorter.sort
      end
    end
  end
end

require 'test_helper'

class HashTest < Minitest::Test
  def test_should_order_hash_without_recursive
    hash = { foo: 'foo text', bar: 'bar text' }
    ordered_hash = hash.sort_by_key
    assert_equal ordered_hash, { bar: 'bar text', foo: 'foo text' }
  end

  def test_should_order_hash_with_recursive
    hash = { foo: 'foo text', bar: { zip: 'software', apple: 'fruit' } }
    ordered_hash = hash.sort_by_key(true)
    assert_equal ordered_hash, { bar: { apple: 'fruit', zip: 'software' }, foo: 'foo text' }
  end

  def test_should_order_hash_with_different_types_of_keys
    hash = { foo: 'foo text', 400 => 'bar text' }
    ordered_hash = hash.sort_by_key(recursive: false)
    assert_equal ordered_hash, { 400 => 'bar text', foo: 'foo text' }
  end
end

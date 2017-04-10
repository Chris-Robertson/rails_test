require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "should allow valid" do
    item = Item.new title: 'Coffee', price: 3.00, kind: :drink
    assert_equal 'Coffee', item.title
    assert_equal 3.00, item.price
    assert item.drink?
    assert item.valid?
  end

  test 'should disallow invaalid' do
    item = Item.new title: 'Coffee', kind: :drink
    assert_not item.valid?

    item = Item.new price: 3.00, kind: :drink
    assert_not item.valid?
    
    item = Item.new price: -3.00, kind: :drink
    assert_not item.valid?
  end

  test 'should have kinds' do
    assert_equal Item.kinds.keys, ['food', 'drink']
  end
end

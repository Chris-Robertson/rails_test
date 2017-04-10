require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_url
    assert_response :success
    assert_select 'h1', 'Menu'
    assert_select 'h2', 'Drinks'
    assert_select 'h2', 'Food'
  end

end

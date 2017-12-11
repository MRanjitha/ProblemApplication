require 'test_helper'

class NavControllerTest < ActionDispatch::IntegrationTest
  test "should get get_nav" do
    get nav_get_nav_url
    assert_response :success
  end

end

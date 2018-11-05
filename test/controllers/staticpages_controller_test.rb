require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get staticpages_home_url
    assert_response :success
  end

  test "should get private" do
    get staticpages_private_url
    assert_response :success
  end

end

require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get homepage" do
    get :homepage
    assert_response :success
  end

  test "should get imprint" do
    get :imprint
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end

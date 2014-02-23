require 'test_helper'

class AccountSettingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get get" do
    get :get
    assert_response :success
  end

  test "should get change_email" do
    get :change_email
    assert_response :success
  end

  test "should get change_password" do
    get :change_password
    assert_response :success
  end

end

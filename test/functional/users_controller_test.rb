require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get biodata" do
    get :biodata
    assert_response :success
  end

  test "should get password" do
    get :password
    assert_response :success
  end

end

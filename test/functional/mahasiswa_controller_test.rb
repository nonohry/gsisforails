require 'test_helper'

class MahasiswaControllerTest < ActionController::TestCase
  test "should get biodata" do
    get :biodata
    assert_response :success
  end

  test "should get password" do
    get :password
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

  test "should get krs" do
    get :krs
    assert_response :success
  end

  test "should get khs" do
    get :khs
    assert_response :success
  end

  test "should get nilai" do
    get :nilai
    assert_response :success
  end

end

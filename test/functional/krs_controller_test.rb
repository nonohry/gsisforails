require 'test_helper'

class KrsControllerTest < ActionController::TestCase
  test "should get daftar" do
    get :daftar
    assert_response :success
  end

  test "should get print" do
    get :print
    assert_response :success
  end

end

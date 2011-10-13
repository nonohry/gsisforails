require 'test_helper'

class DosensControllerTest < ActionController::TestCase
  setup do
    @dosen = dosens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dosens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dosen" do
    assert_difference('Dosen.count') do
      post :create, dosen: @dosen.attributes
    end

    assert_redirected_to dosen_path(assigns(:dosen))
  end

  test "should show dosen" do
    get :show, id: @dosen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dosen.to_param
    assert_response :success
  end

  test "should update dosen" do
    put :update, id: @dosen.to_param, dosen: @dosen.attributes
    assert_redirected_to dosen_path(assigns(:dosen))
  end

  test "should destroy dosen" do
    assert_difference('Dosen.count', -1) do
      delete :destroy, id: @dosen.to_param
    end

    assert_redirected_to dosens_path
  end
end

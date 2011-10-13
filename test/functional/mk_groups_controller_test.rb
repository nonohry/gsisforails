require 'test_helper'

class MkGroupsControllerTest < ActionController::TestCase
  setup do
    @mk_group = mk_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mk_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mk_group" do
    assert_difference('MkGroup.count') do
      post :create, mk_group: @mk_group.attributes
    end

    assert_redirected_to mk_group_path(assigns(:mk_group))
  end

  test "should show mk_group" do
    get :show, id: @mk_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mk_group.to_param
    assert_response :success
  end

  test "should update mk_group" do
    put :update, id: @mk_group.to_param, mk_group: @mk_group.attributes
    assert_redirected_to mk_group_path(assigns(:mk_group))
  end

  test "should destroy mk_group" do
    assert_difference('MkGroup.count', -1) do
      delete :destroy, id: @mk_group.to_param
    end

    assert_redirected_to mk_groups_path
  end
end

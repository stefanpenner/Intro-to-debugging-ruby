require 'test_helper'

class OrangesControllerTest < ActionController::TestCase
  setup do
    @orange = oranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orange" do
    assert_difference('Orange.count') do
      post :create, orange: @orange.attributes
    end

    assert_redirected_to orange_path(assigns(:orange))
  end

  test "should show orange" do
    get :show, id: @orange.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orange.to_param
    assert_response :success
  end

  test "should update orange" do
    put :update, id: @orange.to_param, orange: @orange.attributes
    assert_redirected_to orange_path(assigns(:orange))
  end

  test "should destroy orange" do
    assert_difference('Orange.count', -1) do
      delete :destroy, id: @orange.to_param
    end

    assert_redirected_to oranges_path
  end
end

require 'test_helper'

class StatisControllerTest < ActionController::TestCase
  setup do
    @stati = statis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stati" do
    assert_difference('Stati.count') do
      post :create, stati: { description: @stati.description, name: @stati.name }
    end

    assert_redirected_to stati_path(assigns(:stati))
  end

  test "should show stati" do
    get :show, id: @stati
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stati
    assert_response :success
  end

  test "should update stati" do
    patch :update, id: @stati, stati: { description: @stati.description, name: @stati.name }
    assert_redirected_to stati_path(assigns(:stati))
  end

  test "should destroy stati" do
    assert_difference('Stati.count', -1) do
      delete :destroy, id: @stati
    end

    assert_redirected_to statis_path
  end
end

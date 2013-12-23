require 'test_helper'

class NavitemsControllerTest < ActionController::TestCase
  setup do
    @navitem = navitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navitem" do
    assert_difference('Navitem.count') do
      post :create, navitem: { name: @navitem.name, order: @navitem.order, url: @navitem.url }
    end

    assert_redirected_to navitem_path(assigns(:navitem))
  end

  test "should show navitem" do
    get :show, id: @navitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @navitem
    assert_response :success
  end

  test "should update navitem" do
    patch :update, id: @navitem, navitem: { name: @navitem.name, order: @navitem.order, url: @navitem.url }
    assert_redirected_to navitem_path(assigns(:navitem))
  end

  test "should destroy navitem" do
    assert_difference('Navitem.count', -1) do
      delete :destroy, id: @navitem
    end

    assert_redirected_to navitems_path
  end
end

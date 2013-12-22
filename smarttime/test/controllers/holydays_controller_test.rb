require 'test_helper'

class HolydaysControllerTest < ActionController::TestCase
  setup do
    @holyday = holydays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:holydays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create holyday" do
    assert_difference('Holyday.count') do
      post :create, holyday: { country: @holyday.country, date: @holyday.date, name: @holyday.name }
    end

    assert_redirected_to holyday_path(assigns(:holyday))
  end

  test "should show holyday" do
    get :show, id: @holyday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @holyday
    assert_response :success
  end

  test "should update holyday" do
    patch :update, id: @holyday, holyday: { country: @holyday.country, date: @holyday.date, name: @holyday.name }
    assert_redirected_to holyday_path(assigns(:holyday))
  end

  test "should destroy holyday" do
    assert_difference('Holyday.count', -1) do
      delete :destroy, id: @holyday
    end

    assert_redirected_to holydays_path
  end
end

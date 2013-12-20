require 'test_helper'

class HirecarsControllerTest < ActionController::TestCase
  setup do
    @hirecar = hirecars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hirecars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hirecar" do
    assert_difference('Hirecar.count') do
      post :create, hirecar: { badge: @hirecar.badge, brand: @hirecar.brand, comment: @hirecar.comment, defect: @hirecar.defect, fuel: @hirecar.fuel, model: @hirecar.model, regestration_date: @hirecar.regestration_date, smoking: @hirecar.smoking, status_id: @hirecar.status_id, tech_check: @hirecar.tech_check }
    end

    assert_redirected_to hirecar_path(assigns(:hirecar))
  end

  test "should show hirecar" do
    get :show, id: @hirecar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hirecar
    assert_response :success
  end

  test "should update hirecar" do
    patch :update, id: @hirecar, hirecar: { badge: @hirecar.badge, brand: @hirecar.brand, comment: @hirecar.comment, defect: @hirecar.defect, fuel: @hirecar.fuel, model: @hirecar.model, regestration_date: @hirecar.regestration_date, smoking: @hirecar.smoking, status_id: @hirecar.status_id, tech_check: @hirecar.tech_check }
    assert_redirected_to hirecar_path(assigns(:hirecar))
  end

  test "should destroy hirecar" do
    assert_difference('Hirecar.count', -1) do
      delete :destroy, id: @hirecar
    end

    assert_redirected_to hirecars_path
  end
end

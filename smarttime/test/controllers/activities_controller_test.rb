require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post :create, activity: { activity_time: @activity.activity_time, allocated_at: @activity.allocated_at, appointment_date: @activity.appointment_date, customer_id: @activity.customer_id, customer_service_agreement: @activity.customer_service_agreement, data_privacy_statement: @activity.data_privacy_statement, direct_contact: @activity.direct_contact, end_time: @activity.end_time, hire_car_id: @activity.hire_car_id, start_time: @activity.start_time, work_id: @activity.work_id }
    end

    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should show activity" do
    get :show, id: @activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity
    assert_response :success
  end

  test "should update activity" do
    patch :update, id: @activity, activity: { activity_time: @activity.activity_time, allocated_at: @activity.allocated_at, appointment_date: @activity.appointment_date, customer_id: @activity.customer_id, customer_service_agreement: @activity.customer_service_agreement, data_privacy_statement: @activity.data_privacy_statement, direct_contact: @activity.direct_contact, end_time: @activity.end_time, hire_car_id: @activity.hire_car_id, start_time: @activity.start_time, work_id: @activity.work_id }
    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, id: @activity
    end

    assert_redirected_to activities_path
  end
end

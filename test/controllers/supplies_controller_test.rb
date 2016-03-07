require 'test_helper'

class SuppliesControllerTest < ActionController::TestCase
  setup do
    @supply = supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply" do
    assert_difference('Supply.count') do
      post :create, supply: { car: @supply.car, d_location: @supply.d_location, p_location: @supply.p_location, p_time: @supply.p_time, rate_per_traveller: @supply.rate_per_traveller, s_available: @supply.s_available, s_left: @supply.s_left, supplier_id: @supply.supplier_id }
    end

    assert_redirected_to supply_path(assigns(:supply))
  end

  test "should show supply" do
    get :show, id: @supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply
    assert_response :success
  end

  test "should update supply" do
    patch :update, id: @supply, supply: { car: @supply.car, d_location: @supply.d_location, p_location: @supply.p_location, p_time: @supply.p_time, rate_per_traveller: @supply.rate_per_traveller, s_available: @supply.s_available, s_left: @supply.s_left, supplier_id: @supply.supplier_id }
    assert_redirected_to supply_path(assigns(:supply))
  end

  test "should destroy supply" do
    assert_difference('Supply.count', -1) do
      delete :destroy, id: @supply
    end

    assert_redirected_to supplies_path
  end
end

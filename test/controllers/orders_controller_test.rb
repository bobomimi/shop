require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { address: @order.address, card_expires_on: @order.card_expires_on, card_type: @order.card_type, cart_id: @order.cart_id, city: @order.city, country: @order.country, email: @order.email, first_name: @order.first_name, ip_address: @order.ip_address, last_name: @order.last_name, name: @order.name, phone_number: @order.phone_number, zip_postal_code: @order.zip_postal_code }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { address: @order.address, card_expires_on: @order.card_expires_on, card_type: @order.card_type, cart_id: @order.cart_id, city: @order.city, country: @order.country, email: @order.email, first_name: @order.first_name, ip_address: @order.ip_address, last_name: @order.last_name, name: @order.name, phone_number: @order.phone_number, zip_postal_code: @order.zip_postal_code }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end

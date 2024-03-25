require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get orders_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get "/orders/new"
    assert_response :success
  end

  test "should create order" do
    sign_in users(:one)
    assert_difference("Order.count") do
      post orders_url, params: { order: { city: @order.city, dateOrdered: @order.dateOrdered, deliveryAddress: @order.deliveryAddress, deliveryDate: @order.deliveryDate, gallonsRequested: @order.gallonsRequested, state: @order.state, user_id: @order.user_id, zip: @order.zip, profitMargin: @order.profitMargin } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should not create order" do
    sign_in users(:one)
    
      post orders_url, params: { order: { city: "", dateOrdered: @order.dateOrdered, deliveryAddress: nil, deliveryDate: nil, gallonsRequested: @order.gallonsRequested, state: @order.state, user_id: @order.user_id, zip: @order.zip, profitMargin: nil } }
    

    assert_response 422
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { city: @order.city, dateOrdered: @order.dateOrdered, deliveryAddress: @order.deliveryAddress, deliveryDate: @order.deliveryDate, gallonsRequested: @order.gallonsRequested, state: @order.state, user_id: @order.user_id, zip: @order.zip } }
    assert_redirected_to order_url(@order)
  end

  test "should not update order" do
    sign_in users(:one)
    patch order_url(@order), params: { order: { city: "", dateOrdered: @order.dateOrdered, deliveryAddress: @order.deliveryAddress, deliveryDate: @order.deliveryDate, gallonsRequested: @order.gallonsRequested, state: @order.state, user_id: @order.user_id, zip: @order.zip } }
    assert_response 422
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end

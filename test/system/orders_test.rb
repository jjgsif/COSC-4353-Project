require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "City", with: @order.city
    fill_in "Clientid", with: @order.clientID
    fill_in "Deliveryaddress", with: @order.deliveryAddress
    fill_in "Deliverydate", with: @order.deliveryDate
    fill_in "Gallonsrequested", with: @order.gallonsRequested
    fill_in "Profitmargin", with: @order.profitMargin
    fill_in "State", with: @order.state
    fill_in "Zip", with: @order.zip
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "City", with: @order.city
    fill_in "Clientid", with: @order.clientID
    fill_in "Deliveryaddress", with: @order.deliveryAddress
    fill_in "Deliverydate", with: @order.deliveryDate
    fill_in "Gallonsrequested", with: @order.gallonsRequested
    fill_in "Profitmargin", with: @order.profitMargin
    fill_in "State", with: @order.state
    fill_in "Zip", with: @order.zip
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
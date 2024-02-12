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

    fill_in "Gallon rqst", with: @order.Gallon_Rqst
    check "Instate" if @order.InState
    fill_in "Profit margin", with: @order.Profit_Margin
    fill_in "Company name", with: @order.company_name
    fill_in "Ordernumber", with: @order.orderNumber
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Gallon rqst", with: @order.Gallon_Rqst
    check "Instate" if @order.InState
    fill_in "Profit margin", with: @order.Profit_Margin
    fill_in "Company name", with: @order.company_name
    fill_in "Ordernumber", with: @order.orderNumber
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

require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "Ensure Gallons included" do
    order = Order.new
    assert_not order.save, "Saved Order without Gallons Requested filled in"
  end

  test "Ensure Profit Margin Included" do
    order = Order.new
    assert_not order.save, "Saved Order without Profit Margins filled in"
  end

  test "Ensure Delivery Address included" do
    order = Order.new
    assert_not order.save, "Saved Order without Delivery Address filled in"
  end

  test "Ensure City included" do
    order = Order.new
    assert_not order.save, "Saved Order without City filled in"
  end

  test "Ensure State included" do
    order = Order.new
    assert_not order.save, "Saved Order without State filled in"
  end

  test "Ensure Zip Code included" do
    order = Order.new
    assert_not order.save, "Saved Order without Zipcode filled in"
  end

  test "Ensure Delivery Date included" do
    order = Order.new
    assert_not order.save, "Saved Order without any requested Delivery Date"
  end
end

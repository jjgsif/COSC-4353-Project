require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "Ensure Gallons included" do
    order = Order.new({
      deliveryDate: 2024-02-28,
      deliveryAddress: "4401 Cougar Village Dr.",
      city: "Houston",
      state: "TX",
      zip: 77089})
    assert_not order.save, "Saved Order without Gallons Requested filled in"
  end

  test "Ensure Delivery Address included" do
    order = Order.new({
      gallonsRequested: 12000,
      deliveryDate: 2024-02-28,
      city: "Houston",
      state: "TX",
      zip: 77089})
    assert_not order.save, "Saved Order without Delivery Address filled in"
  end

  test "Ensure City included" do
    order = Order.new({
      gallonsRequested: 12000,
      deliveryDate: 2024-02-28,
      deliveryAddress: "4401 Cougar Village Dr.",
      state: "TX",
      zip: 77089})
    assert_not order.save, "Saved Order without City filled in"
  end

  test "Ensure State included" do
    order = Order.new({
      gallonsRequested: 12000,
      deliveryDate: 2024-02-28,
      deliveryAddress: "4401 Cougar Village Dr.",
      city: "Houston",
      zip: 77089})
    assert_not order.save, "Saved Order without State filled in"
  end

  test "Ensure Zip Code included" do
    order = Order.new({
      gallonsRequested: 12000,
      deliveryDate: 2024-02-28,
      deliveryAddress: "4401 Cougar Village Dr.",
      city: "Houston",
      state: "TX"})
    assert_not order.save, "Saved Order without Zipcode filled in"
  end

  test "Ensure Delivery Date included" do
    order = Order.new({
      gallonsRequested: 12000,
      deliveryAddress: "4401 Cougar Village Dr.",
      city: "Houston",
      state: "TX",
      zip: 77089})
    assert_not order.save, "Saved Order without any requested Delivery Date"
  end
end

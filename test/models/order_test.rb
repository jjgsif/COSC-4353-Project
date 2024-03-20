require "test_helper"

class OrderTest < ActiveSupport::TestCase

  test "Ensure Gallons included" do
    gallons = gallonsRequested.new 
    assert_not gallons.save, "Saved Order without Gallons Requested filled in "
  end
  
  test "Ensure Profit Margin Included " do
    margin = profitMargin.new
    assert_not margin.save, "Saved Order without Profit Margins filled in "
  end

  test "Ensure Delivery Address included" do
    address = deliveryAddress.new 
    assert_not address.save, "Saved Order without Delivery Address filled in "
  end

  test "Ensure City included" do
    varcity = city.new 
    assert_not varcity.save, "Saved Order without City filled in "
  end

  test "Ensure State included" do
    varstate = state.new 
    assert_not varstate.save, "Saved Order without State filled in "
  end

  test "Ensure Zip Code included" do
    zipcode = zip.new 
    assert_not zipcode.save, "Saved Order without Zipcode filled in "
  end

  test "Ensure Delivery Date included" do
    date = deliveryDate.new 
    assert_not date.save, "Saved Order without any requested Delivery Date "
  end

end

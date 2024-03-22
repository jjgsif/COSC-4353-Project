require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  test "Ensure Full Name included" do
    profile = Profile.new
    assert_not profile.save, "Saved Profile without Full Name"
  end

  test "Ensure Address One included" do
    profile = Profile.new
    assert_not profile.save, "Saved Profile without Address One"
  end

  test "Ensure City included" do
    profile = Profile.new
    assert_not profile.save, "Saved Profile without City"
  end

  test "Ensure State included" do
    profile = Profile.new
    assert_not profile.save, "Saved Profile without State"
  end

  test "Ensure Zipcode included" do
    profile = Profile.new
    assert_not profile.save, "Saved Profile without Zipcode"
  end

  test "Ensure User ID included" do
    profile = Profile.new
    assert_not profile.save, "Saved Profile without User ID"
  end

  test "Ensure Profile saves with all required fields" do
    profile = Profile.new(
      fullName: "",
      addressOne: "",
      city: "",
      state: "",
      zipcode: "",
      user_id: users(:one).id
    )
    assert profile.save, "Could not save Profile with all required fields"
  end
end
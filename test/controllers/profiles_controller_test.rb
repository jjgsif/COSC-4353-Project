require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @profile = profiles(:valid)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference("Profile.count") do
      post profiles_url, params: { profile: { addressOne: @profile.addressOne, addressTwo: @profile.addressTwo, fullName: @profile.fullName, state: @profile.state, user_id: @profile.user_id, zipcode: @profile.zipcode, city: @profile.city } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "create profile alidations" do 
    post profiles_url, params: { profile: { addressTwo: @profile.addressTwo, fullName: @profile.fullName, state: @profile.state, user_id: @profile.user_id, zipcode: @profile.zipcode, city: ""} }
    assert_response 422
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { addressOne: @profile.addressOne, addressTwo: @profile.addressTwo, fullName: @profile.fullName, state: @profile.state, user_id: @profile.user_id, zipcode: @profile.zipcode, city: @profile.city } }
    assert_redirected_to profile_url(@profile)
  end

  test "update profile validations" do
    patch profile_url(@profile), params: { profile: { addressOne: nil, addressTwo: @profile.addressTwo, fullName: @profile.fullName, state: @profile.state, user_id: @profile.user_id, zipcode: 2, city: @profile.city } }
    assert_response 422
  end

  test "should destroy profile" do
    assert_difference("Profile.count", -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end

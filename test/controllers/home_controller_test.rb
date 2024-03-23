require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    test "Redirected to New Profile" do  
        sign_in users(:noProfile)
        get "/"
        assert_redirected_to new_profile_path
    end

    test "Redirected to Registration" do
        sign_out users(:one)
        get "/"
        assert_redirected_to new_user_registration_path 
    end

    test "Redirected to Profile" do
        sign_in users(:hasProfile)
        get "/"
        assert_redirected_to profiles_path
    end
end
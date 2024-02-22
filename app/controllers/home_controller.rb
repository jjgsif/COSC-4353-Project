class HomeController < ApplicationController
  def index
    if user_signed_in? and !current_user.profile.nil?
    redirect_to profiles_path
    else
      if user_signed_in?
        redirect_to new_profile_path
      else
        redirect_to new_user_registration_path 
      end
    end 
  end

  def Login
  end
end

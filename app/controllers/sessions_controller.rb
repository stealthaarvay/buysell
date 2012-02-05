class SessionsController < ApplicationController

  def create
    auth_details = request.env["omniauth.auth"]
    user = User.find_by_oauth_uid(auth_details["uid"]) || User.create_new_user(auth_details)
    session[:user_id] = user.id
    redirect_to dash_path, :notice => "You have successfully signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end

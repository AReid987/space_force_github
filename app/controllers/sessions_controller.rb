class SessionsController < ApplicationController

  def new
    # binding.pry
    @user = User.new
  end

  def google_auth
    #binding.pry
    access_token = request.env["omniauth.auth"]
    @user = User.from_omniauth(access_token)
    log_in

    redirect_to root_path
  end


end

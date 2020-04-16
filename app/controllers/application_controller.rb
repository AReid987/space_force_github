class ApplicationController < ActionController::Base
  before_action :current_user


  private

  def log_in
    session[:user_id] = @user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end

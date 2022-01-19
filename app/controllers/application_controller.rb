class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    if session[:user_id]
      @cureent_user ||= User.find(session[:user_id])
    else
      @cureent_user = nil
    end
  end
  
end

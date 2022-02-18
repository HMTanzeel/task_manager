class ApplicationController < ActionController::Base
  include Pagy::Backend 
  helper_method :current_user

  def authenticate_user
    redirect_to root_path unless current_user
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
  
end

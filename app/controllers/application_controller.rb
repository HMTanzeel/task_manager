class ApplicationController < ActionController::Base
  include Pagy::Backend 
  helper_method :current_user

  def authenticate_user!
    redirect_to request.referer || root_path unless current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end

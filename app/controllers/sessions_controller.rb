class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "LoggedIn"
    else
      flash[:alert] = "Email or Password is incorrect or empty"
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user_id)
    @user_id = nil
    redirect_to root_url, notice: "LoggedOut"
  end
  
end

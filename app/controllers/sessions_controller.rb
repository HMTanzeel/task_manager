class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_notes_path(user.id), notice: "You are successfully logged in"
    else
      redirect_to new_session_path, alert: "Invalid email and/or password combination"
    end
  end

  def destroy
    session.clear
    redirect_to root_url, notice: "You are successfully logged out."
  end  
end

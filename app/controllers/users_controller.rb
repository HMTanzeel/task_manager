class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:show, :edit, :destroy, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_url(@user), notice: 'User was successfully created.'
    else
      redirect_to new_session_url, status: :unprocessable_entity
    end
  end

  def update
    if @user == current_user
      @user.update(user_params)
      redirect_to root_path, notice: 'User has successfully updated.'
    else
      redirect_to edit_user_path(@user), alert: @user.errors.full_messages
    end
  end

  def destroy
    if @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.'
    else
      redirect_to users_path, alert: @user.errors.full_messages
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :mobile, :email, :password, :password_confirmation, :address)
    end
end

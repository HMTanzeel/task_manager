class MessagesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @message = @user.messages.create(message_params)
    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    @message = @user.messages.find(params[:id])
    @message.destroy
    redirect_to root_path
  end

  private
    def message_params
      params.require(:message).permit(:body)
    end
end

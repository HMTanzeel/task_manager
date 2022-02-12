class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create(message_params)
    redirect_to root_path
  end

  def destroy
    @message = current_user.messages.find(params[:id])
    @message.destroy
    redirect_to root_path
  end

  private
    def message_params
      params.require(:message).permit(:body)
    end
end

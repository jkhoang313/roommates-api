class Api::V1::MessagesController < ApplicationController
  def index
    @messages = current_user.home.messages
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    @user = current_user
    @message.user = @user
    @message.home = @user.home
    if @message.save
      render json: @message
    else
      render json: "Error", status: 404
    end
  end

  private

  def message_params
    params.permit(:message_content)
  end

end

class Api::V1::SessionsController < ApplicationController
  def index
    @user = current_user
    render json: @user
  end

  def create
    @user = User.find_by(user_name: params[:userName].downcase)
    if @user && @user.authenticate(params[:password])
      jwt = Auth.encrypt({user_id: @user.id})
      render json: {jwt: jwt}
    end
  end
end

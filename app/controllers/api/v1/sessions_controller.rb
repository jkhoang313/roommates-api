class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(user_name: params[:user_name].downcase)
    if @user && @user.authenticate(params[:password])
      jwt = Auth.encrypt({user_id: @user.id})
      render json: {jwt: jwt, user: @user}
    end
  end
end

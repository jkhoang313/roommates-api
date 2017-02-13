class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    byebug
    if @user.save
      # jwt = Auth.encrypt({user.id: @user.id})
      # render json: {jwt: jwt, @user.first_name}
    else
      render json: "Error", status: 404
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)
  end
end

class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    @user.user_name.downcase!
    if @user.save
      jwt = Auth.encrypt({user_id: @user.id})
      render json: {jwt: jwt, user: @user}
    else
      render json: "Error", status: 404
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def return_current_user
    render json: current_user
  end

  def update_user_profile
    current_user.update(user_params)
    render json: current_user
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :image_url, :password, :password_confirmation)
  end
end

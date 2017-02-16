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
      render json: {jwt: jwt, id: @user.id, fullName: @user.full_name, email: @user.email, userName: @user.user_name}
    else
      render json: "Error", status: 404
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def return_current_user
    @user = current_user
    @home = @user.home
    token = request.headers['HTTP_AUTHORIZATION']
    if @home
      render json: {jwt: token, id: @user.id, fullName: @user.full_name, email: @user.email, userName: @user.user_name, homeName: @home.name, homeAddress: @home.address}
    else
      render json: {jwt: token, id: @user.id, fullName: @user.full_name, email: @user.email, userName: @user.user_name}
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)
  end
end

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

      render json: {jwt: jwt, fullName: @user.full_name, email: @user.email, userName: @user.user_name}
    else
      render json: "Error", status: 404
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def login
    @user = User.find_by(user_name: params[:userName].downcase)
    if @user && @user.authenticate(params[:password])
      @user = User.find_by(user_name: params[:userName].downcase)
      jwt = Auth.encrypt({user_id: @user.id})

      render json: {jwt: jwt, fullName: @user.full_name, email: @user.email, userName: @user.user_name}
    end
  end

  def current_user
    @user = User.find(Auth.decode(params[:jwt_token])["user_id"])

    render json: {jwt: params[:jwt_token], fullName: @user.full_name, email: @user.email, userName: @user.user_name}

  end

  private

  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)
  end
end

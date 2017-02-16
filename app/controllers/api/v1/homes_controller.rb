class Api::V1::HomesController < ApplicationController
  def index
    @homes = Home.all
    render json: @homes
  end

  def create
    @user = current_user
    @home = Home.new(home_params)
    if @home.save
      token = request.headers['HTTP_AUTHORIZATION']
      @bill = Bill.create(home_id: @home.id)
      @user.update(home_id: @home.id)
      # render json: {jwt: token, fullName: @user.full_name, email: @user.email, userName: @user.user_name, homeName: @home.name, homeAddress: @home.address}
      render json: @home
    else
      render json: "Error", status: 404
    end
  end

  private

  def home_params
    params.permit(:name, :address)
  end
end

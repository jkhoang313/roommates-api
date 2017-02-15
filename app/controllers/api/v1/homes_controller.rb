class Api::V1::HomesController < ApplicationController

  def create
    @user = current_user
    @home = Home.new(home_params)
    if @home.save
      token = request.headers['HTTP_AUTHORIZATION']
      @user.home = @home
      @user.save
      render json: {jwt: token, fullName: @user.full_name, email: @user.email, userName: @user.user_name, homeName: @home.name, homeAddress: @home.address}
    else
      render json: "Error", status: 404
    end
  end

  private

  def home_params
    params.permit(:name, :address)
  end

end

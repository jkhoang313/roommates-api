class Api::V1::HomesController < ApplicationController

  def create
    @user = current_user
    @home = Home.new(home_params)
    if @home.save
      @user.home = @home
      @user.save
    else
      render json: "Error", status: 404
    end
    # @user.user_name.downcase!
    # if @user.save
    #   jwt = Auth.encrypt({user_id: @user.id})
    #
    #   render json: {jwt: jwt, fullName: @user.full_name, email: @user.email, userName: @user.user_name}
    # else
    #   render json: "Error", status: 404
    # end
  end

  private

  def home_params
    params.permit(:name, :address)
  end

end

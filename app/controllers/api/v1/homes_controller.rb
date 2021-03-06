class Api::V1::HomesController < ApplicationController
  def index
    @homes = Home.all
    render json: @homes.order(:id)
  end

  def create
    @user = current_user
    @home = Home.new(home_params)
    @home.admin = @user
    if @home.save
      @bill = Bill.create(home_id: @home.id)
      @user.update(home_id: @home.id)
      render json: @home
    else
      render json: "Error", status: 404
    end
  end

  def get_home
    @home = current_user.home
    render json: @home
  end

  def add_to_home
    @home = Home.find(params[:id])
    current_user.update(home_id: @home.id)
    render json: @home
  end

  def remove_home
    current_user.update(home_id: nil)
    render json: {}
  end

  def update
    @home = Home.find(params[:id])
    @home.update(home_params)
    render json: @home
  end

  def kick_member
    @home = Home.find(params[:id])
    @member = User.find(params[:member_id])
    @member.update(home_id: nil)
    render json: @home
  end

  private

  def home_params
    params.permit(:name, :address, :rules)
  end
end

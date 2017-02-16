class Api::V1::BillsController < ApplicationController
  def index
    @bills = Bill.all

    render json: @bills
  end

  def show
    @bill = Bill.find(params[:id])

    render json: @bill
  end

  def find_bill
    @bill = current_user.bill

    render json: @bill
  end
end

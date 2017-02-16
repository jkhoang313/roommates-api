class Api::V1::TransactionsController < ApplicationController
  def index
    @transactions = current_user.bill.transactions
    render json: @transactions
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    if @transaction.save
      @transaction.update_bill
      render json: @transaction
    else
      render json: "Error", status: 404
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  private

  def transaction_params
    params.permit(:title, :description, :amount)
  end
end

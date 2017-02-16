class Api::V1::TransactionsController < ApplicationController
  def index
    @transactions = current_user.bill.transactions
    render json: @transactions
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    if @transaction.save
      @bill = @transaction.bill
      @bill.update_changes
      render json: @bill.transactions
    else
      render json: "Error", status: 404
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @bill = @transaction.bill
    @transaction.destroy
    @bill.update_changes
    render json: @bill.transactions
  end

  private

  def transaction_params
    params.permit(:title, :description, :amount)
  end
end
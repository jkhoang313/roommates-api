class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.new(event_params)
    @user = current_user
    @event.user = @user
    @event.home = @user.home
    if @event.save
      render json: @event
    else
      render json: "Error", status: 404
    end
  end

  private

  def event_params
    params.permit(:title, :description, :start_date, :end_date)
  end
end

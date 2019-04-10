class EventsController < ApplicationController
  def create
    puts(params[:id])
    @events = Event.create(params[:event])
    render json: @events
  end

  def destroy
    @events = Event.find(params[:id])
    @events.delete()
  end

  def update
    @events = Event.find(params[:id])
    @events.update(params[:event])
    render json: @events
  end
end

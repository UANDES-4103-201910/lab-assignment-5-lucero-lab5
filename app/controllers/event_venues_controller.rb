class EventVenuesController < ApplicationController
  def create
    puts(params[:id])
    @event_venues = EventVenue.create(params[:event_venue])
    render json: @event_venues
  end

  def destroy
    @event_venues = EventVenue.find(params[:id])
    @event_venues.delete()
  end

  def update
    @event_venues = EventVenue.find(params[:id])
    @event_venues.update(params[:event_venue])
    render json: @event_venues
  end
end

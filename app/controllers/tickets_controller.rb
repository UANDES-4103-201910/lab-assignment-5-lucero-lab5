class TicketsController < ApplicationController
  def create
    puts(params[:id])
    @ticket = Ticket.create(params[:ticket])
    render json: @ticket
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.delete()
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(params[:ticket])
    render json: @ticket
  end
end

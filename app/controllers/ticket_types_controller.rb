class TicketTypesController < ApplicationController
  def create
    puts(params[:id])
    @ticket_types = TicketType.create(params[:ticket_types])
    render json @ticket_types
  end

  def destroy
    @ticket_types = TicketType.find(params[:id])
    @ticket_types.delete
  end

  def update
    @ticket_types = TicketType.find(params[:id])
    @ticket_types.update(params[ticket_types])
    render json @ticket_types
  end
end

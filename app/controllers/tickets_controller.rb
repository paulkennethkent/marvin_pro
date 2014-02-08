class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all 
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end

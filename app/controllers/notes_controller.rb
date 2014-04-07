class NotesController < ApplicationController
  before_action :confirm_logged_in
  
def create
  @ticket = Ticket.find(params[:ticket_id])
  @note = @ticket.notes.create(params[:note].permit(:admin_user_id, :comment))
  redirect_to(:controller => 'tickets', :action => 'show', :id => @ticket)
  end
end

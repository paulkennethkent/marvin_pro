class NotesController < ApplicationController

before_action :confirm_logged_in
  
def create
  @ticket = Ticket.find(params[:ticket_id])

  @note = @ticket.notes.create(params[:note].permit(:admin_user_id, :comment))
  if @note.save
  	flash[:notice] = "Note created successfuly."
  redirect_to(:controller => 'tickets', :action => 'show', :id => @ticket)
	else
	flash[:notice] = "Ticket NOT created successfuly."
	redirect_to(:controller => 'tickets', :action => 'show', :id => @ticket)
  end
end


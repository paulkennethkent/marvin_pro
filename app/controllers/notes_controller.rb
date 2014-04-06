class NotesController < ApplicationController
def create
    @ticket = Ticket.find(params[:ticket_id])
    @note = @note.comments.create(params[:note].permit(:admin_user_id, :comment))
    redirect_to(:action => 'index')
  end
end

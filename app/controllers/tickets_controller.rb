class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all 
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
    #@product_count = Product.count
    @products = Product.all 
    
  end

  def create
    # Instatiate a new object
    @ticket = Ticket.new(ticket_params)
    # save the object
    if @ticket.save
      # if save succeeds, redirect to the index action
      flash[:notice] = "Ticket created successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      #@product_count = Product.count 
      @products = Product.all 
      render('new')
    end
  end 
 
  def edit
    @ticket = Ticket.find(params[:id])
    #@product_count = Product.count 
    @products = Product.all 
  end

  def update
    # Find an existing object using form parameters
    @ticket = Ticket.find(params[:id])
     #update the object
    if @ticket.update_attributes(ticket_params)
     #if save succeeds, redirect to the index action
      flash[:notice] = "Ticket updated successfuly."
      redirect_to(:action => 'show', :id => @ticket.id)
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      #@product_count = Product.count 
       @products = Product.all 
      render('edit')
    end
  end
  
   def delete
     @ticket = Ticket.find(params[:id])
  end

  def destroy
    ticket = Ticket.find(params[:id]).destroy
    flash[:error] = "'#{ticket.id}' delted successfully."
    redirect_to(:action => 'index')
  end

    private
    def ticket_params
      params.require(:ticket).permit(:product_id, :customer_id, :admin_users_id, :status)
    end

end

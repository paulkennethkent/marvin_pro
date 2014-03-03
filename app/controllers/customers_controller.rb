class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    # Instatiate a new object
    @customer = Customer.new(school_params)
    # save the object
    if @customer.save
      # if save succeeds, redirect to the index action
      flash[:notice] = "Customer created successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('new')
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    # Find an existing object using form parameters
    @customer = Customer.find(params[:id])
     #update the object
    if @customer.update_attributes(school_params)
     #if save succeeds, redirect to the index action
      flash[:notice] = "Customer updated successfuly."
      redirect_to(:action => 'show', :id => @customer.id)
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('edit')
    end
  end

  
  def delete
    @customer = Customer.find(params[:id])
  end

  def destroy
    customer = Customer.find(params[:id]).destroy
    flash[:error] = "'#{customer.name}' delted successfully."
    redirect_to(:action => 'index')
  end

   private
    def school_params
      params.require(:customer).permit(:name, :email, :phone)
    end
end

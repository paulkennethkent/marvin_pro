class ProductsController < ApplicationController

  before_action :confirm_logged_in


  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @frameworks = Framework.all
  end

  def create
    # Instatiate a new object
    @product = Product.new(product_params)
    # save the object
    if @product.save
      # if save succeeds, redirect to the index action
      flash[:notice] = "Product created successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      @frameworks = Framework.all
      render('new')
    end
  end

  def edit
    @product = Product.find(params[:id])
    @framework = Framework.all
  end

  def update
    # Find an existing object using form parameters
    @product = Product.find(params[:id])
     #update the object
    if @product.update_attributes(product_params)
     #if save succeeds, redirect to the index action
      flash[:notice] = "Product updated successfuly."
      redirect_to(:action => 'show', :id => @product.id)
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('edit')
    end
  end

  def delete
     @product = Product.find(params[:id])
  end

  def destroy
    product = Product.find(params[:id]).destroy
    flash[:error] = "'#{product.name}' delted successfully."
    redirect_to(:action => 'index')
  end

  

  private
    def product_params
      params.require(:product).permit(:name, :tier, :isbn, :support_url, :framework_id)
    end
end


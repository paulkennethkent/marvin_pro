class ProductsController < ApplicationController

  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new({:name => "Default"})
  end

  def create
    # Instatiate a new object
    @product = Product.new(product_params)
    # save the object
    if @product.save
      # if save succeeds, redirect to the index action
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('new')
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    # Find an existing object using form parameters
    @product = Product.find(params[:id])
     #update the object
    if @product.update_attributes(product_params)
     #if save succeeds, redirect to the index action
      redirect_to(:action => 'show', :id => @product.id)
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('edit')
    end
  end

  def delete
  end

  private
    def product_params
      params.require(:product).permit(:name, :tier)
    end
end


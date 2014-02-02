class ProductsController < ApplicationController
  
  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end

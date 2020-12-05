class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    if @product.save
      redirect_to("/")
    else
      render :new
    end
  end

  def edit
  end
end

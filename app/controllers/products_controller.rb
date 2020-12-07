class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @maker = Maker.new
  end

  def create
    @product = Product.new(product_params)
    @maker = Maker.new(maker_params)
    if @product.save
      flash[:notice] = "商品情報を登録しました"
      redirect_to("/")
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to("/")
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to("/")
  end

  private

  def product_params
    params.require(:product).permit(:product_code, :name)
  end

  def maker_params
    params.require(:maker).permit(:name)
  end

end

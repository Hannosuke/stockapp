class ProductsController < ApplicationController
  def index
    @products = Product.all.order(id: :asc)
  end

  def new
    @product = Product.new
    @product.build_price
    @product.build_stock
  end

  def create
    @product = Product.new(product_params)
    if @product&.save
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
    params.require(:product).permit(:product_code, :name, :maker_id, :category_id, price_attributes: [:price], stock_attributes: [:stock])
  end

  def maker_params
    params.permit(:id)
  end

end

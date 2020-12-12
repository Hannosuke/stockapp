class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
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
    @product.update(update_product_params)
    flash[:notice] = "商品情報を更新しました"
    redirect_to("/")
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "商品情報を削除しました"
    redirect_to("/")
  end

  private

  def product_params
    params.require(:product).permit(:product_code, :name, :maker_id, :category_id, price_attributes: [:price], stock_attributes: [:stock])
  end

  def update_product_params
    params.require(:product).permit(:product_code, :name, :maker_id, :category_id, price_attributes: [:price, :_destroy, :id], stock_attributes: [:stock, :_destroy, :id])
  end

end

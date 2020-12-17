class StocksController < ApplicationController
  def update
    @stock = Stock.find(params[:id])
    @stock.purchase
    flash[:notice] = "商品を購入しました"
    redirect_to("/")
  end

end
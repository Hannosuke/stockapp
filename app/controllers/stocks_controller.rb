class StocksController < ApplicationController
  def update
    @stock = Stock.find(params[:id])
    stock = @stock.stock
    stock -= 1
    @stock.save
    flash[:notice] = "商品を購入しました"
    redirect_to("/")
  end

  
end
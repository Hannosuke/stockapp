class PurchasesController < ApplicationController

    def create
        @purchase = current_user.purchases.build(product_id:  params[:product_id])
        @purchase.buy
        flash[:notice] = "商品を購入しました"
        redirect_to("/")
    end
end

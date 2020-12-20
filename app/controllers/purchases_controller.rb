class PurchasesController < ApplicationController
    
    def create
        @purchase = Purchase.new(
            user_id: current_user.id,
            product_id: params[:product_id]
        )
        @purchase.save
        flash[:notice] = "商品を購入しました"
        redirect_to("/")
    end
    
end
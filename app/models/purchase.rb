class Purchase < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates:user_id,{presence: true}
    validates:product_id,{presence: true}

    def buy
      stock = product.stock
      stock.stock -= 1

      ActiveRecord::Base.transaction do
        save
        stock.save
      end
    end
end

class Product < ApplicationRecord
    validates :product_code, presence: true
    validates :name, presence: true
    validates :maker_id, presence: true

    belongs_to :maker
    belongs_to :category
end

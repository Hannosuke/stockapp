class Product < ApplicationRecord
    validates :product_code, presence: true
    validates :name, presence: true
end

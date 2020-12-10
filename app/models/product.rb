class Product < ApplicationRecord
    validates :product_code, presence: true
    validates :name, presence: true
    validates :maker_id, presence: true


    belongs_to :maker
    belongs_to :category
    has_one :price
    has_one :stock
    accepts_nested_attributes_for :price
    accepts_nested_attributes_for :stock
end

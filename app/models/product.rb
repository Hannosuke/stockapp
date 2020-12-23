class Product < ApplicationRecord
    validates :product_code, presence: true, uniqueness: true
    validates :name, presence: true
    validates :maker_id, presence: true


    belongs_to :maker
    belongs_to :category
    has_one :price
    has_one :stock
    has_many :purchases
    accepts_nested_attributes_for :price
    accepts_nested_attributes_for :stock

    has_one_attached :image
end

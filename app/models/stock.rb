class Stock < ApplicationRecord
  belongs_to :product

  def sold
    stock -= 1
    save
  end
  
end

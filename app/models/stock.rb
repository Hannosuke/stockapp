class Stock < ApplicationRecord
  belongs_to :product

  def purchase
    stock -= 1
    save
  end

end

class AddProductToMakers < ActiveRecord::Migration[6.0]
  def change
    add_reference :makers, :product, null: false
  end
end

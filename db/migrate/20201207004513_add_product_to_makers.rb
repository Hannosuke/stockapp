class AddProductToMakers < ActiveRecord::Migration[6.0]
  def change
    add_reference :makers, :product, null: false, foreign_key: true
  end
end

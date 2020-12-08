class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.decimal :price
      t.references :product

      t.timestamps
    end
  end
end

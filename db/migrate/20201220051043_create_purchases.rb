class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.bigint :product_id
      t.bigint :user_id

      t.timestamps
    end
  end
end

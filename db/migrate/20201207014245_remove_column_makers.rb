class RemoveColumnMakers < ActiveRecord::Migration[6.0]
  def up
    remove_column :makers,  :product_id
  end
  def down
    add_column :makers,  :product_id, :bigint
  end
end

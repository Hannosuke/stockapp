class RemoveColumnCategories < ActiveRecord::Migration[6.0]
  def up
    remove_column :categories,  :product_id
  end
  def down
    add_column :categories,  :product_id, :bigint
  end
end

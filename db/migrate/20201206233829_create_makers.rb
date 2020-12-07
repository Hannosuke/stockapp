class CreateMakers < ActiveRecord::Migration[6.0]
  def change
    create_table :makers do |t|
      t.string :name

      t.timestamps
      add_reference :products, :maker, index: true
    end
  end
end

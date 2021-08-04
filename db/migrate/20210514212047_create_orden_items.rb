class CreateOrdenItems < ActiveRecord::Migration[6.0]
  def change
    create_table :orden_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.decimal :price, :precision => 4, :scale => 2
      t.integer :quantity
      
      t.timestamps
    end
  end
end

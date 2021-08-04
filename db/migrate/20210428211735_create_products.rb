class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.decimal :price, :precision => 4, :scale => 2
      t.text :description

      t.timestamps
    end
  end
end

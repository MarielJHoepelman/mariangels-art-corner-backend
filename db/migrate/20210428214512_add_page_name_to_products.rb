class AddPageNameToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :page_name, :string
  end
end

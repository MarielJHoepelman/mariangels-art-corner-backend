class RenameOrdenItems < ActiveRecord::Migration[6.0]
  def change
    rename_table :orden_items, :order_items
  end
end

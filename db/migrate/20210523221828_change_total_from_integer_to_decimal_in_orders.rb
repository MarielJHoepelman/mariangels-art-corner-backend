class ChangeTotalFromIntegerToDecimalInOrders < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :total, :decimal
  end
end

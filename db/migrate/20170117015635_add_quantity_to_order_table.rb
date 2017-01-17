class AddQuantityToOrderTable < ActiveRecord::Migration
  def change
    add_column :order_tables, :quantity, :integer
  end
end

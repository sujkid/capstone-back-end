class AddChefMenuToOrderTables < ActiveRecord::Migration
  def change
    add_reference :order_tables, :chef_menu, index: true, foreign_key: true
  end
end

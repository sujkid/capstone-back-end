class CreateOrderTables < ActiveRecord::Migration
  def change
    create_table :order_tables do |t|
      t.string :delivery_time
      t.string :destination_address

      t.timestamps null: false
    end
  end
end

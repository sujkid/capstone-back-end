class CreateMenuDays < ActiveRecord::Migration
  def change
    create_table :menu_days do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end

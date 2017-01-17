class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :foodname
      t.string :fooddescription
      t.string :foodurl
      t.integer :votes

      t.timestamps null: false
    end
  end
end

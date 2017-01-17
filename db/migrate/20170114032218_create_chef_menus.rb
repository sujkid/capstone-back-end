class CreateChefMenus < ActiveRecord::Migration
  def change
    create_table :chef_menus do |t|
      t.string :food_name
      t.string :food_description
      t.integer :votes
      t.string :food_url

      t.timestamps null: false
    end
  end
end

class AddDateToChefMenus < ActiveRecord::Migration
  def change
    add_column :chef_menus, :date, :date
  end
end

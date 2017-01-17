class AddUserToChefMenus < ActiveRecord::Migration
  def change
    add_reference :chef_menus, :user, index: true, foreign_key: true
  end
end

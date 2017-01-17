class AddChefMenuToMenuDay < ActiveRecord::Migration
  def change
    add_reference :menu_days, :chef_menu, index: true, foreign_key: true
  end
end

class MenuDaysController < ApplicationController
  # def retrieve_menu_day
  #   # select * from chef_menus a inner join menu_days b on b.chef_menu_id = a.id where b.date = '19-jan-2017’;
  #   # user_items = UserItem.select('user_items.name, user_items.description, user_items.id, user_items.user_id, user_items.status, users.name as user_name').joins(:user).where('user_items.name like ? and user_items.user_id!=?', "%#{item[:name]}%", current_user.id)
  #  # @menu_day = MenuDay.select('chef_menus.food_name, chef_menus.food_description, chef_menus.votes, chef_menus.food_url').joins(:menu_day).where('menu_days.date =   ?', '#{order[:id]}')
  #   @menu_day = ChefMenu.find(8)
  #   render json: @menu_day
  # end
end

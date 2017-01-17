class MenuDaysController < ApplicationController
  # def retrieve_menu_day
  #   # select * from chef_menus a inner join menu_days b on b.chef_menu_id = a.id where b.date = '19-jan-2017’;
  #   # user_items = UserItem.select('user_items.name, user_items.description, user_items.id, user_items.user_id, user_items.status, users.name as user_name').joins(:user).where('user_items.name like ? and user_items.user_id!=?', "%#{item[:name]}%", current_user.id)
  #  # @menu_day = MenuDay.select('chef_menus.food_name, chef_menus.food_description, chef_menus.votes, chef_menus.food_url').joins(:menu_day).where('menu_days.date =   ?', '#{order[:id]}')
  #   @menu_day = ChefMenu.find(8)
  #   render json: @menu_day
  # end

#   frozen_string_literal: true
# #
# class MenuDaysController < ApplicationController
#   before_action :set_list, only: [:show, :update, :destroy]
#   MAX_PAGE_SIZE = ENV['LISTS_MAX_PAGE_SIZE'] || 100
#
#   def size
#     size = params.fetch(:size, MAX_PAGE_SIZE).to_i
#     return size unless size > MAX_PAGE_SIZE
#     MAX_PAGE_SIZE
#   end
#
#   def page
#     params.fetch(:page, 1).to_i
#   end
#
#   def lookahead
#     lookahead = params[:lookahead] == 'true' ? 1 : params[:lookahead].to_i
#     return lookahead if lookahead < size
#     size - 1
#   end
#
#   # Used by index action
#   private :size, :page, :lookahead
#
#   # GET /lists
#   # GET /lists.json
#   def index
#     @lists = List.order(:created_at)
#                  .offset(size * (page - 1))
#                  .limit(size + lookahead)
#
#     render json: @lists
#   end
#
#   # GET /lists/1
#   # GET /lists/1.json
#   def show
#     render json: @list
#   end
#
#   # POST /lists
#   # POST /lists.json
#   def create
#     @list = List.new(list_params)
#
#     if @list.save
#       render json: @list, status: :created, location: @list
#     else
#       render json: @list.errors, status: :unprocessable_entity
#     end
#   end
#
#   # PATCH/PUT /lists/1
#   # PATCH/PUT /lists/1.json
#   def update
#     @list = List.find(params[:id])
#
#     if @list.update(list_params)
#       head :no_content
#     else
#       render json: @list.errors, status: :unprocessable_entity
#     end
#   end
#
#   # DELETE /lists/1
#   # DELETE /lists/1.json
#   def destroy
#     @list.destroy
#
#     head :no_content
#   end
#
#   private
#
#   def set_list
#     @list = List.find(params[:id])
#   end
#
#   def list_params
#     params.require(:list).permit(:title, :hidden)
#   end
end

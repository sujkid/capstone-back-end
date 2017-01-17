class MenusController < ApplicationController
  def index
    @menus = Menu.all

    render json: @menus
  end

  def show
    render json: Menu.find(params[:id])
  end
end

class MenusController < OpenReadController
  # before_action :set_menu, only: [:update]
  def index
    @menus = Menu.all

    render json: @menus
  end

  def show
    render json: Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:menu_id])

    @menu.votes = @menu.votes + 1

    if @menu.save
      render json: @menu, status: :created
    else
      head :bad_request
    end
  end

  def set_menu
    @menu = current_user.menus.find(params[:id])
  end

  def menu_params
    params.require(:menu)
          .permit(:foodname, :fooddescription, :foodurl, :votes, :date, :price, :menu_id)
          .merge(user_id: current_user.id)

  end

  private :set_menu
end

class MenusController < OpenReadController
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
end

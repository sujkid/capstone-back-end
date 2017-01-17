class ChefsController < OpenReadController
  def index
    @chefs = Chef.all

    render json: @chefs
  end
end

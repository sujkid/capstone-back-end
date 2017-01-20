class OrdersController < OpenReadController
  before_action :set_order, only: [:destroy]
  def create
    order_params = params.require(:order)
                         .permit(:destaddress, :quantity, :menu_id)
                         .merge(user_id: current_user.id)
    @order = current_user.orders.new(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def index
    @orders = Order.select('orders.quantity, orders.id, menus.foodname, menus.date, menus.price').joins(:menu).where('orders.user_id =?', current_user.id)

    render json: @orders, each_serializer: Order::MyOrderSerializer
  end

  def destroy
    # if current_user
    @order_destroy.destroy
    # end

    head :no_content
  end

  def set_order
    @order_destroy = current_user.orders.find(params[:id])
  end

  private :set_order
end

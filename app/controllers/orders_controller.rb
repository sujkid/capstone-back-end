class OrdersController < OpenReadController
  def create
    order_params = params.require(:order)
                         .permit(:destaddress, :quantity, :menu_id)
                         .merge(user_id: current_user.id)
    if current_user
      @order = Order.new(order_params)

      if @order.save
        render json: @order, status: :created
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  end

  def index
    @orders = Order.select('orders.quantity, orders.id, menus.foodname, menus.date, menus.price').joins(:menu).where('orders.user_id =?', current_user.id)

    render json: @orders, each_serializer: Order::MyOrderSerializer
  end

  def destroy
    if current_user
      @order = Order.find(params[:id])

      @order.destroy
    end

    head :no_content
  end
end

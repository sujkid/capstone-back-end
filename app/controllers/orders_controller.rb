class OrdersController < OpenReadController
  def create
    order_params = params.require(:order)
                         .permit(:destaddress, :quantity, :menu_id)
                         .merge(user_id: current_user.id)
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end
end

class OrderTablesController < ApplicationController
  def create
    order_params = params.require(:order_table)
                         .permit(:destination_address, :quantity)
    @order = current_user.order_tables.build(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end
end

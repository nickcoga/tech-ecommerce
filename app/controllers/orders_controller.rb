class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    @orders = Order.find(params[:id])
    render json: @orders
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      render json: order, status: :created
    else
      render json: order.errors, status: :bad_request
    end
    # TODO: handle creation of order_product related record
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      render json: order, status: :update
    else
      render json: order.errors, status: :bad_request
    end
    # TODO: handle update of order_product related record if necessary
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    render status: :no_content
  end

  private

  def order_params
    params.require(:order).permit(:paid_at, :status, :total_price, :user_address_id, :user_id)
  end
end

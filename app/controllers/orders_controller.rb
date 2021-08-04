class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    order = Order.new(user_id: order_params[:user_id], total: order_params[:total])

    order_params[:order_items].each do |item|
      order.order_items << OrderItem.create(item)
    end
    
    order.save
    render_resource(order)
  end

  def index
    orders = Order.where(user_id: current_user.id)
    render json: orders
  end

  def show
    order = Order.find(params[:id])
    render :json => order.to_json(:methods => [:order_items_products])
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :total, :order_items=> [:product_id, :price, :quantity])
  end

end

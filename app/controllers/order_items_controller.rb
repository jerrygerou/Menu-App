class OrderItemsController < ApplicationController
  def index
    @order_items = OrderItem.all
  end

  def create
    @order_item = OrderItem.new(
                              menu_item_id: params[:menu_item_id],
                              quantity: params[:quantity]
                              )
  end
end

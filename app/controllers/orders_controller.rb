class OrdersController < ApplicationController
  def index
    @order_items = OrderItem.all
    @total = 0
    in_order_items = OrderItem.where(in_order: true)
    in_order_items.each do |order_item|
      @total = @total + (order_item.menu_item.price * order_item.quantity)
      end
  end
end

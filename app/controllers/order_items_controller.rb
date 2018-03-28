class OrderItemsController < ApplicationController

  def index
    @order_items = OrderItem.all
    @total = 0
    in_order_items = OrderItem.where(in_order: true)
    in_order_items.each do |order_item|
      @total = @total + (order_item.menu_item.price * order_item.quantity)
    end

  end

  def create
    @order_item = OrderItem.new(
                        in_order: true,
                        quantity: 1,
                        menu_item_id: params[:menu_item_id]
                      )
    if @order_item.save
      redirect_to '/order_items'
    end
  end

  def update
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    redirect_to order_items_path
  end

  def add_quantity
    @order_item = OrderItem.find(params[:id])
    @order_item.quantity += 1
    @order_item.save
    redirect_to '/order_items'
  end

  def reduce_quantity
    @order_item = OrderItem.find(params[:id])
    if @order_item.quantity > 1
      @order_item.quantity -= 1
    end
    @order_item.save
    redirect_to '/order_items'
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :in_order)
  end
end

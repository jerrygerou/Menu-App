class OrderItem < ApplicationRecord
  belongs_to :menu_item, optional: true

  def subtotal
    menu_item.price * quantity
  end

  def order_total
    total = 0
    order_item = OrderItem.where(in_order: true)
    order_item.each do |item|
      total += (item.menu_item.price * item.quantity)
    end
  end

end

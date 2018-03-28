# class Order < ApplicationRecord
#   has_many :order_items
#   has_many :menu_items, through: :order_items
#
#   def subtotal
#     menu_item.price * quantity
#   end
#
#   def order_total
#     total = 0
#     order_items = OrderItem.where(in_order: true)
#     order_items.each do |order_item|
#       total = total (order_item.menu_item.price * order_item.quantity)
#     end
#     return total
#   end
#
# end

class OrderItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order

  def subtotal
    menu_item.price * quantity
  end

end

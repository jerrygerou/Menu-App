class OrderItem < ApplicationRecord
  belongs_to :menu_item, optional: true

  def subtotal
    menu_item.price * quantity
  end

end

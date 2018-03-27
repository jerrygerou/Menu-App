class OrderItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order

  validates :menu_item_id, :order_id, presence: true
end

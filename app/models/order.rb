class Order < ApplicationRecord
  belongs_to :menu_item, optional: true
end

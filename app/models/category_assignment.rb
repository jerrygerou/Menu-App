class CategoryAssignment < ApplicationRecord
  belongs_to :menu_item
  belongs_to :category

  validates :menu_item_id, :category_id, presence: true
end

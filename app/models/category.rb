class Category < ApplicationRecord
  has_many :category_assignments
  has_many :menu_items, through: :category_assignments

  validates :title, presence: true
end

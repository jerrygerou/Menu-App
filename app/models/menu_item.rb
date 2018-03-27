class MenuItem < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :category_assignments
  has_many :categories, through: :category_assignments

  has_attached_file :menu_item_image,
    styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
    },
    default_url: 'http://www.emoji.co.uk/files/mozilla-emojis/food-drink-mozilla/0.png'
end

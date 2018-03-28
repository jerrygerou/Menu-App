Rails.application.routes.draw do
  resources :menu_items
  resources :order_items
  resources :orders
  post 'order_items/:id/add' => "order_items#add_quantity", as: "order_item_add"
  post 'order_items/:id/reduce' => "order_items#reduce_quantity", as: "order_item_reduce"
  root 'menu_items#index'
end

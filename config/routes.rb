Rails.application.routes.draw do
  resources :menu_items
  root 'menu_items#index'
end

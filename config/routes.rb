Rails.application.routes.draw do
  get 'user_index' => 'backroom#user_index'
  put 'upgrade_user' => 'backroom#upgrade_user'
  put 'downgrade_user' => 'backroom#downgrade_user'

  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'
  post 'order_complete' => 'cart#order_complete'
  put 'edit_line_item' => 'cart#edit_line_item'
  put 'remove_from_cart' => 'cart#remove_from_cart'

  devise_for :users

  root 'storefront#all_items'
  get 'branding' => 'storefront#items_by_brand'
  get 'categorical' => 'storefront#items_by_category'
  
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'product#index'
  get '/product', to: 'product#index'
  get '/order', to: 'order#index'
end

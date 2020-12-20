Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  post 'purchases/:product_id/create', to: 'purchases#create'

  get  'users/:id/purchases', to: 'users#purchases'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resources :products
  resources :users
end

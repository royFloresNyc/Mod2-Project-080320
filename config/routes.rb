Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :supes, :products, :posts, :events, :comments, :sessions, :user_supes, :user_events
  resources :cart_products, only: [:create, :destroy]

  get '/home', to: 'users#home', as: 'user_home'
  get '/cart', to: 'users#my_cart', as: 'user_cart'
  post '/comments', to: 'comments#create'
  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
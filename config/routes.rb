Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :supes, :products, :posts, :events
  post '/comments', to: 'comments#create'
end

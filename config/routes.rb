Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :posts, only:[:show]
  # Routs for posts
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  get '/posts/:id/edit', to: 'posts#edit'
  post '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  # Routes for user
  get '/user/new', to: 'user#new'

  # Routes for instruments
  resources :users do
    resources :instruments
  end

  get '/users/:user_id/instruments', to: 'instruments#index'
  get '/users/:user_id/instruments/new', to: 'instruments#new'
  get '/users/:user_id/instruments/:id/', to: 'instruments#show'
  instrument '/users/:user_id/instruments/:id/edit', to: 'instruments#edit'
  delete '/users/user_id/instruments/:id', to 'instruments#destroy'
end

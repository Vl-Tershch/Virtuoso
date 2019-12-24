Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
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
  resources :users, only:[:show]
  get '/users/new', to: 'users#new'
  get '/users/:id', to: 'users#show'
  get '/users/:id/edit', to: 'users#edit'
  post '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  # Routes for instruments
  resources :users do
    resources :instruments
  end

  resources :instruments, only:[:instruments, :show]
  get '/users/:user_id/instruments', to: 'instruments#index'
  get '/users/:user_id/instruments/new', to: 'instruments#new'
  get '/users/:user_id/instruments/:id', to: 'instruments#show'
  get '/users/:user_id/instruments/:id/edit', to: 'instruments#edit'
  post '/users/:user_id/instruments/:id', to: 'instruments#update'
  delete '/users/user_id/instruments/:id', to: 'instruments#destroy'
  get 'showinstruments' => 'users#showinstruments'
end

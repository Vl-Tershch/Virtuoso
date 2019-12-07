Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get '/posts' => 'posts#index'
  get '/posts/new' => 'posts#new'
  get '/posts/:id' => 'posts#update'
  get '/posts/:id' => 'posts#destroy'
end

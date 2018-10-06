require 'sidekiq/web'
Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'posts/create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  resources :posts, only: [:create]
end

require 'sidekiq/web'
Rails.application.routes.draw do
  get 'posts/create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  mount Sidekiq::Web => '/sidekiq'
  resources :posts, only: [:create]
end

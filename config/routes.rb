Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :feeds
  resources :favorites, only: [:create, :destroy]
end

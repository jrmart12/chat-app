Rails.application.routes.draw do
  devise_for :users
resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]
  root to: 'conversations#index'
  end

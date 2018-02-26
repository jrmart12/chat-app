Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
resources :conversations, only: [:index, :show, :destroy]
  end

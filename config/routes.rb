Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
  end
end
  root to: 'conversations#index'
  end

Rails.application.routes.draw do

  devise_for :users
  root to: 'home#top'
  
  resources :users, only: [:show]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end

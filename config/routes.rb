Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get  '/homes/about/', to: 'homes#index' 
  resources :users, only: [:show, :index, :edit, :update, :create]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
end

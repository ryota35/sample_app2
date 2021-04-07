Rails.application.routes.draw do


  devise_for :admins
  devise_for :users
  root to: 'articles#index'

  resources :tests, only: [:new, :index, :create, :show]
  resources :articles, only: [:new, :create, :show]

end

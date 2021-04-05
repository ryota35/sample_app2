Rails.application.routes.draw do


  devise_for :admins
  devise_for :users
  root to: 'tests#new'

  resources :tests, only: [:index, :create, :show]
  resources :articles, only: [:new, :create, :show]

end

Rails.application.routes.draw do


  devise_for :admins
  devise_for :users
  root to: 'contacts#new'

  scope module: :users do
  resources :users, only:[:index, :edit, :update]
  end

  resources :contacts, only:[:create]
  resources :searches, only:[:index]
  resources :tests, only:[:new, :index, :create, :show]
  resources :articles, only:[:new, :create, :show]

end

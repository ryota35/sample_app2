Rails.application.routes.draw do

  root to: 'tests#new'

  resources :tests, only: [:index, :create, :show]

end

Rails.application.routes.draw do
  root 'home#index'

  get 'profile' => 'profile#index'
  get 'register' => 'register#index'
  get 'contribute' => 'contribute#index'

  # routes for URL
  post 'url' => 'url#create'
  get 'url' => 'url#index'


end

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get 'profile' => 'profile#index'
  get 'register' => 'register#index'
  get 'contribute' => 'contribute#index'
  get 'contact' => 'contact#index'
  get 'browse' => 'browse#index'

  # routes for URL
  post 'url' => 'url#create'
  get 'url' => 'url#index'

  # routes for tags
  post 'tags' => 'tags#create'
  get 'tags' => 'tags#index'


end

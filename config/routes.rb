Rails.application.routes.draw do
  root 'home#index'

  get 'profile' => 'profile#index'
  get 'register' => 'register#index'
  get 'contribute' => 'contribute#index'
  get 'contact' => 'contact#index'

  # routes for URL
  post 'url' => 'url#create'
  get 'url' => 'url#index'

  # routes for tags
  post 'tags' => 'tags#create'
  get 'tags' => 'tags#index'


end

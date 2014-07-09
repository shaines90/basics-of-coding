Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get 'profile' => 'profile#index'
  get 'register' => 'register#index'
  get 'contribute' => 'contribute#index'
  get 'contact' => 'contact#index'
  get 'browse' => 'browse#index'

  # routes for posts
  get 'posts' => 'post#index'
  get 'posts' => 'post#new'
  post 'posts' => 'post#create'
  get 'posts' => 'post#show'
  get 'posts' => 'post#edit'
  post 'posts' => 'post#update'
  delete 'posts' => 'post#destroy'

  # routes for comments
  get 'comments' => 'comment#index'
  get 'comments' => 'comment#new'
  post 'comments' => 'comment#create'
  get 'comments' => 'comment#show'
  get 'comments' => 'comment#edit'
  post 'comments' => 'comment#update'
  delete 'comments' => 'comment#destroy'

  # routes for URL
  post 'url' => 'url#create'
  get 'url' => 'url#index'

  # routes for tags
  post 'tags' => 'tags#create'
  get 'tags' => 'tags#index'


end

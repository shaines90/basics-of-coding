Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'

  get 'profile' => 'profile#index'
  get 'contribute' => 'contribute#index'
  get 'contact' => 'contact#index'
  get 'browse' => 'browse#index'

  # routes for posts
  get 'posts' => 'posts#index'
  get 'posts' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts' => 'posts#edit'
  post 'posts' => 'posts#update'
  delete 'posts' => 'posts#destroy'

  get 'posts/jquery' => 'posts#show'

  # routes for comments
  get 'comments' => 'comments#index'
  get 'comments' => 'comments#new'
  post 'comments' => 'comments#create'
  get 'comments' => 'comments#show'
  get 'comments' => 'comments#edit'
  post 'comments' => 'comments#update'
  delete 'comments' => 'comments#destroy'

  # routes for URL
  post 'url' => 'url#create'
  get 'url' => 'url#index'

  # routes for tags
  post 'tags' => 'tags#create'
  get 'tags' => 'tags#index'


end

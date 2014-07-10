Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'

  get 'profile' => 'profile#index'
  get 'contribute' => 'contribute#index'
  get 'contacts' => 'contact#index'
  post 'contacts' => 'contact#index'
  get 'browse' => 'browse#index'

  # routes for posts
  get 'posts' => 'posts#index'
  get 'posts' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id' => 'posts#update'
  delete 'posts' => 'posts#destroy'

  get 'posts/jquery' => 'posts#show'

  # routes for comments
  get 'comments' => 'comments#index'
  get 'comments' => 'comments#new'
  post 'comments' => 'comments#create'
  get 'comments/:id' => 'comments#show'
  get 'posts/:post_id/comments/:comment_id/edit' => 'comments#edit'
  post 'posts/:post_id/comments/:comment_id' => 'comments#update'
  delete 'comments' => 'comments#destroy'

  # routes for URL
  post 'url' => 'url#create'
  get 'url' => 'url#index'

  # routes for tags
  post 'tags' => 'tags#create'
  get 'tags' => 'tags#index'

end

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'

  get 'contribute' => 'contribute#index'
  get 'contact' => 'contacts#new'
  post 'contact' => 'contacts#create'
  get 'browse' => 'browse#index'
  get 'browse/:id' => 'browse#show_tag'

  #routes for search
  get 'search' => 'search#show'

  # routes for posts
  get 'posts' => 'posts#index'
  get 'posts' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'

  get 'posts/jquery' => 'posts#show'

  # routes for comments
  get 'comments' => 'comments#index'
  get 'comments' => 'comments#new'
  post 'comments' => 'comments#create'
  get 'comments/:id' => 'comments#show'
  get 'posts/:post_id/comments/:comment_id/edit' => 'comments#edit'
  post 'posts/:post_id/comments/:comment_id' => 'comments#update'
  delete 'posts/:post_id/comments/:comment_id' => 'comments#destroy'

  # routes for tags
  post 'tags' => 'tags#create'
  get 'tags' => 'tags#index'

  #routes for profile
  get 'profile/:id' => 'profile#show'

end

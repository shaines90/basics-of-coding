Rails.application.routes.draw do
  root 'home#index'

  get 'profile' => 'profile#index'

  get 'register' => 'register#index'

  get 'login' => 'login#index'
end

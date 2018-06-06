Rails.application.routes.draw do
  get 'users/show'
  get 'show/index'
  
  devise_for :users
  root 'blogs#index'
  resources :blogs

end

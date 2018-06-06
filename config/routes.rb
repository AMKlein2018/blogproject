Rails.application.routes.draw do
  get 'show/index'
  
  devise_for :users
  root 'blogs#index'
  resources :blogs

end

Rails.application.routes.draw do
  get 'show/index'
  
  devise_for :users
  root 'welcome#index'
  resources :blogs

end

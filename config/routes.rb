BlogRc250revised::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'  # NOTE: this 'get' should be a 'delete'

  resources :users
  resources :sessions

  root :to => 'home#index'
  resources :articles
end

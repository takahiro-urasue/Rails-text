Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  get 'pages/indx'
  root 'pages#index'
  get 'pages/help'

  resources :users
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

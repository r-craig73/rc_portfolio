Rails.application.routes.draw do
  devise_for :users
  root :to => 'skills#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :skills
  resources :interests

end

Rails.application.routes.draw do
  root :to => 'skills#index'

  resources :skills

  resources :interests

end

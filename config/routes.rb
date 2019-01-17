Rails.application.routes.draw do

  get 'sessions/new'
  root 'pages#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :teams
  resources :games
  resources :players
  resources :scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

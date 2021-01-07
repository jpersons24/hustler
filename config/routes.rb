Rails.application.routes.draw do
  
  # get '/sessions/login', to: 
  # get '/sessions', to: 'sessions#create', as: 'sessions'
  # get '/sessions/logout', to: 'sessions#logout', as: 'logout'
  # get '/sessions/new', to: 'sessions#new', as: 'new_session'

  resources :worker_skills, only: [:new, :create, :destroy]
  resources :skills, except: [:destroy]
  resources :reviews
  resources :tasks
  resources :workers
  resources :users

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  
  
end

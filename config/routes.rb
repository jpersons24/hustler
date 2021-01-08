Rails.application.routes.draw do
  

  resources :worker_skills, only: [:new, :create, :destroy]
  resources :skills, except: [:destroy]
  resources :reviews
  resources :tasks
  resources :workers
  resources :users

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  get '/home', to: 'welcome#home', as: 'home'

  
  
end

Rails.application.routes.draw do
  resources :worker_skills, only: [:new, :create, :destroy]
  resources :skills, except: [:destroy]
  resources :reviews
  resources :tasks
  resources :workers
  resources :users
  
end

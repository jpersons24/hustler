Rails.application.routes.draw do
  resources :worker_skills, only: [:new, :create, :destroy]
  resources :skills, except: [:destroy]
  resources :reviews, except: [:show]
  resources :tasks
  resources :workers
  resources :users
  
end

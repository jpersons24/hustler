Rails.application.routes.draw do
  resources :worker_skills, only: [:new, :create]
  resources :skills, except: [:destroy]
  resources :schedules, except: [:index]
  resources :reviews, except: [:show]
  resources :tasks
  resources :workers
  resources :users
  
end

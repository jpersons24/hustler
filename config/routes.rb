Rails.application.routes.draw do
  resources :worker_skills
  resources :skills
  resources :schedules
  resources :reviews
  resources :tasks
  resources :workers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

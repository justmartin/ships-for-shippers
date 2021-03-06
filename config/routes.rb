Rails.application.routes.draw do
  get 'dylan/test'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "home#index"

  get "/boats" => "boats#index"
  get "/jobs" => "jobs#index"
  get "/boats_jobs" => "boats_jobs#index"

  post "/boats" => "boats#create"
  post "/jobs" => "jobs#create"
  post "/boats_jobs" => "boats_jobs#create"
  post "/boats/delete" => "boats#destroy"
  post "/jobs/delete" => "jobs#destroy"
  post "/boats_jobs/delete" => "boats_jobs#destroy"

  resources :boats, only: [:create]
end

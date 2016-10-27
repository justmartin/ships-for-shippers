Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "home#index"

  get "/boats" => "boats#index"
  get "/jobs" => "jobs#index"
  get "/boats_jobs" => "boats_jobs#index"

  post "/boats" => "boats#create"
  post "/jobs" => "jobs#create"
  post "boats_jobs" => "boats_jobs#create"

  resources :boats, only: [:create]
end

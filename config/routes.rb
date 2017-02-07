Rails.application.routes.draw do




  root "sessions#index"
  get "register" => "users#new"
  post "register" => "users#create"
  get "login" => "sessions#new"
  post "login" => "sessions#new"
  get "profile" => "profiles#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

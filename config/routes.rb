Rails.application.routes.draw do


  get 'profiles/new'

  root "sessions#new"
  get "register" => "users#new"
  post "register" => "users#create"
  get "login" => "sessions#new"
  post "login" => "sessions#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

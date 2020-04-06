Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org

  # get "todos", to: "todos#index"
  # post "todos/create", to: "todos#create"
  # get "todos/:id", to: "todos#show"

  resources :todos
  resources :users
  post "users/login", to: "users#login"
end

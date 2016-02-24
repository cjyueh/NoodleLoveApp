Rails.application.routes.draw do
  root to: "dishes#index"

  get "/dishes/:id", to: "dishes#show", as: "dish"

  resources :reviews

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  get "/sign-in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sign-out", to: "sessions#destroy", as: "sign_out"
end
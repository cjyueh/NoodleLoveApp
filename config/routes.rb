Rails.application.routes.draw do
  root to: "dishes#index"

  get "/dishes/:id", to: "dishes#show", as: "dish"

  resources :reviews

  resources :users

  get "/sign-in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sign-out", to: "sessions#destroy", as: "sign_out"
end
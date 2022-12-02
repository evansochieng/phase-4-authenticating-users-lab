Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Add routes for sessions
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  #route for user already logged in
  get '/me', to: "users#show"
  
end

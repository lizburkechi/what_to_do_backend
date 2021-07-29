Rails.application.routes.draw do
  resources :users
  resources :notes
  resources :activities
  

  get '/notes', to: 'notes#index'
  get '/notes/:id', to: 'notes#show'
  post '/notes', to: 'notes#create'
  patch '/notes/:id', to: 'notes#update'
  delete '/notes/:id', to: 'notes#destroy'

  # post "signup", to: "users#create"
  post "/login", to: "auth#create"

end

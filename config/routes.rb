Rails.application.routes.draw do




  get 'notes', to:'notes#index'
  post 'notes', to:'notes#create'
  get 'notes/new', to:'notes#new'
  get 'notes/:id', to: 'notes#show'
  get '/oauth2callback', to: 'notes#create_callback'

  get 'sessions/new', to: 'sessions#new'

  post '/upload', to: 'notes#create'


  root to: "notes#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  #homepage is index page
  root :to => 'categories#index'

  #new user routes
  resources :users, :only => [:new, :create]

  #login session routes
   get '/login' => 'session#new'
   post '/login' => 'session#create'
   delete '/login' => 'session#destroy'

   #category and bookmark CRUD routes
   resources :categories
   resources :bookmarks

end

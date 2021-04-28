Rails.application.routes.draw do
  root :to => 'categories#index'
  resources :users, :only => [:new, :create]

  #login session routes
   get '/login' => 'session#new'
   post '/login' => 'session#create'
   delete '/login' => 'session#destroy'

   resources :categories
   resources :bookmarks

end

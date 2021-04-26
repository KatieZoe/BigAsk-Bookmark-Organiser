Rails.application.routes.draw do
  root :to => 'catagories#index'
  resources :users, :only => [:new, :create]

  #login session routes
   get '/login' => 'session#new'
   post '/login' => 'session#create'
   delete '/login' => 'session#destroy'

   resources :catagories, :index => [:new, :create]
end

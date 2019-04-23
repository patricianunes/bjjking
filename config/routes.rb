Rails.application.routes.draw do
  root :to => 'home#index'
  resources :athletes
  resources :belts
  resources :teams


  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

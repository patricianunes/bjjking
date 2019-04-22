Rails.application.routes.draw do
  root :to => 'home#index'
  resources :athletes
  resources :belts
  resources :teams
end

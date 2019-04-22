Rails.application.routes.draw do
  resources :belts
  root :to => 'home#index'
  resources :athletes

end

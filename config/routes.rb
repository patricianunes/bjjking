Rails.application.routes.draw do
  root :to => 'athletes#index'
  resources :athletes

end

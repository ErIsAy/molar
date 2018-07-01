Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :doctors
  get '/chart', to: 'home#chart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end

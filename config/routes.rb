Rails.application.routes.draw do
  resources :events
  resources :recurring_events
  resources :patients
  resources :doctors
  get '/chart', to: 'home#chart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end

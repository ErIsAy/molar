Rails.application.routes.draw do
  devise_for :users
  resources :med_histories
  resources :notes
  resources :events
  resources :recurring_events
  resources :patients do
    resources :med_histories, only: %i[new create]
    resources :notes, only: %i[new create]
  end
  resources :doctors
  get '/chart', to: 'home#chart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
end

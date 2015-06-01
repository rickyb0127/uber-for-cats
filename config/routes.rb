Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
  get 'sign-in', to: 'authentication#new'
  post 'sign-in', to: 'authentication#create'
  get 'sign-out', to: 'authentication#destroy'

  get 'driver-sign-up', to: 'foo#new'
  post 'driver-sign-up', to: 'foo#create'
  get 'driver-sign-in', to: 'driver#new'
  post 'driver-sign-in', to: 'driver#create'
  get 'driver-sign-out', to: 'driver#destroy'

  resources :appointments
  resources :riders
  resources :drivers

end

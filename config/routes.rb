Putzen::Application.routes.draw do

  get "zip_codes/create"

  get "welcome/index"

  root to: 'welcome#index'

  resources :areas, path: '', only: [:show]

  resources :searches, only: [:new]

  resources :prospects, only: [:create]
end

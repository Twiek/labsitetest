Putzen::Application.routes.draw do
  get "welcome/index"

  root to: 'welcome#index'

  resources :areas, path: '', only: [:show]

  resources :searches, only: [:new]
end

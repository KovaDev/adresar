Rails.application.routes.draw do

  devise_for :users

  resources :categories
  resources :physical_entities
  resources :legal_entities
  resources :users

  get 'profile/:id', to: 'users#profile', as: 'profile'
  #get 'edit/:id', to: 'users#edit', as: 'edit_user'

  #get 'search', to: 'home#index', as: search_path

  root to: 'home#index'

end

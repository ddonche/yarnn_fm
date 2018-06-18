Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  
  resources :users
  resources :albums
  resources :tracks
  get 'genre/:tag', to: 'tags#show', as: :tag
end

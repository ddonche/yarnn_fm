Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  
  resources :users
  resources :albums, :path => '/anthology'
  resources :tracks
  resource  :subscription
  
  get 'genre/:tag', to: 'tags#show', as: :tag
end

Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  
  authenticated do
    root :to => 'welcome#home', as: :authenticated
  end
  root 'welcome#index'
  
  resources :users do
    member do
      get :following, :followers
      get :blogs
      get :albums
      get :tracks
    end
  end
  resources :blogs
  resources :relationships, only: [:create, :destroy]
  get 'station/:id', to: 'users#favorites', as: :station
  resources :albums, :path => '/albums'
  resources :tracks do
  end

  get 'genre/:tag', to: 'tags#show', as: :tag
end

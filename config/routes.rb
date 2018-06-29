Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
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
    member do
      put "favorite", to: 'tracks#favorite'
    end
  end

  get 'genre/:tag', to: 'tags#show', as: :tag
  get 'generators', to: 'generators#show'
  put 'ipsum', to: 'generators#ipsum'
  get 'ipsum', to: 'generators#ipsum'
  put 'names_gen', to: 'generators#names'
  get 'names_gen', to: 'generators#names'
end

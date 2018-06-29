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
    post 'favorite', to: 'favorites#favorite'
    post 'unfavorite', to: 'favorites#unfavorite'
  end

  get 'genre/:tag', to: 'tags#show', as: :tag
  get 'generators', to: 'ipsums#show'
  put 'ipsum', to: 'ipsums#ipsum'
  get 'ipsum', to: 'ipsums#ipsum'
  put 'names_gen', to: 'ipsums#names'
  get 'names_gen', to: 'ipsums#names'
end

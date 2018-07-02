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
  resources :topics
  resources :relationships, only: [:create, :destroy]
  get 'station/:id', to: 'users#favorites', as: :station
  resources :albums, :path => '/albums'
  resources :tracks do
    post 'favorite', to: 'favorites#favorite'
    post 'unfavorite', to: 'favorites#unfavorite'
  end

  get 'genre/:tag', to: 'tags#show', as: :tag
  
  get 'generators', to: 'ipsums#show'
  get 'ipsum', to: 'ipsums#ipsum'
  get 'apocalpyse', to: 'ipsums#apocalypse'
  get 'fantasy', to: 'ipsums#fantasy'
  get 'horror', to: 'ipsums#horror'
  get 'nature', to: 'ipsums#nature'
  get 'modern', to: 'ipsums#modern'
  get 'sci-fi', to: 'ipsums#scifi'
  get 'names_gen', to: 'ipsums#names'
end

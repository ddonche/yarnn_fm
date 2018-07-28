Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' },
  controllers: {omniauth_callbacks: 'omniauth_callbacks'}
  
  authenticated do
    root :to => 'dashboards#index', as: :authenticated
  end
  
  root 'welcome#index'
  
  resources :users do
    member do
      get :following, :followers
      get :blogs
      get :albums
      get :tracks
      get :listings
    end
  end
  
  resource :subscription
  
  resources :pseudonyms
  
  resources :blogs do
    resources :comments
  end
  
  resources :topics do
    resources :comments
  end
  
  resources :relationships, only: [:create, :destroy]
  get 'station/:id', to: 'users#favorites', as: :station
  
  resources :albums, :path => '/albums'
  
  resources :tracks do
    resources :comments
    post 'favorite', to: 'favorites#favorite'
    post 'unfavorite', to: 'favorites#unfavorite'
  end
  
  resources :listings, :path => "marketplace/" do
    resources :transactions
    resources :reviews, except: [:show, :index]
    get 'download', on: :member
  end
  
  get 'marketplace/genre/:tag', to: 'listings#genres', as: :genre
  
  resources :notifications do
    member do
      get :toggle_read
    end
  end
  
  get 'about', to: 'welcome#about'
  get 'help', to: 'welcome#help'
  
  get 'dashboard' => 'dashboards#index'
  get '/payout_method' => 'users#payout'
  get 'sales', to: 'transactions#sales'
  get 'purchases', to: 'transactions#purchases'
  
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
  match '/conversations', to: 'conversations#index', via: 'get'

  get 'genre/:tag', to: 'tags#show', as: :tag
  get 'genres', to: 'tags#index'

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

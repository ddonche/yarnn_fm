Rails.application.routes.draw do
  devise_for :users
  
  authenticated do
    root :to => 'welcome#home', as: :authenticated
  end
  root 'welcome#index'
  
  resources :users do
    member do
      resources :blogs
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  get 'station/:id', to: 'users#favorites', as: :username
  resources :albums, :path => '/anthology'
  resources :tracks do
    post 'favorite', to: 'favorites#favorite'
    post 'unfavorite', to: 'favorites#unfavorite'
  end

  get 'genre/:tag', to: 'tags#show', as: :tag
end

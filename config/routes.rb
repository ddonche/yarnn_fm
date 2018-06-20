Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  
  resources :users do
    member do
      resources :blogs
      get :following, :followers
    end
  end
  resources :albums, :path => '/anthology'
  resources :tracks
  resources :relationships, only: [:create, :destroy]

  get 'genre/:tag', to: 'tags#show', as: :tag
end

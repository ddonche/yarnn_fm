Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  
  resources :users do
    member do
      resources :blogs
    end
  end
  resources :albums, :path => '/anthology'
  resources :tracks

  get 'genre/:tag', to: 'tags#show', as: :tag
end

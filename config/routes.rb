Rails.application.routes.draw do
  resources :logs
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' },
  controllers: {invitations: 'users/invitations', registrations: 'users/registrations', omniauth_callbacks: 'omniauth_callbacks'}

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
      get :topics
    end
  end

  resource :subscription

  resources :pseudonyms
  resources :links, only: [:new, :edit, :update, :create, :destroy]
  resources :announcements, only: [:new, :edit, :update, :create, :destroy]

  resources :blogs do
    member do
      put 'like', to: 'blogs#upvote'
      put 'dislike', to: 'blogs#downvote'
    end
    resources :comments do
      member do
        put 'like', to: 'comments#upvote'
        put 'dislike', to: 'comments#downvote'
      end
      resources :notations
    end
  end

  resources :topics do
    member do
      put 'like', to: 'topics#upvote'
      put 'dislike', to: 'topics#downvote'
      get :toggle_status
    end
    resources :comments do
      member do
        put 'like', to: 'comments#upvote'
        put 'dislike', to: 'comments#downvote'
      end
      resources :notations
    end
  end

  resources :relationships, only: [:create, :destroy]
  get 'station/:id', to: 'users#favorites', as: :station

  resources :albums, :path => '/albums'

  resources :tracks do
    resources :sponsorships
    resources :comments do
      member do
        put 'like', to: 'comments#upvote'
        put 'dislike', to: 'comments#downvote'
      end
      resources :notations
    end
    post 'favorite', to: 'favorites#favorite'
    post 'unfavorite', to: 'favorites#unfavorite'
  end

  resources :listings, :path => "marketplace/" do
    resources :transactions
    resources :reviews, except: [:show, :index]
    get 'download', on: :member
  end
  
  resources :wikis, :path => 'wiki/' do
    member do
      put 'like', to: 'wikis#upvote'
      put 'dislike', to: 'wikis#downvote'
    end
    resources :comments do
      member do
        put 'like', to: 'comments#upvote'
        put 'dislike', to: 'comments#downvote'
      end
      resources :notations
    end
  end

  get 'marketplace/genre/:tag', to: 'listings#genres', as: :genre

  resources :notifications do
    member do
      get :toggle_read
    end
  end

  get 'about', to: 'welcome#about'
  get 'help', to: 'welcome#help'
  get 'privacy', to: 'welcome#privacy'
  get 'terms', to: 'welcome#terms'
  resources :flags, only: [:new, :create, :index]

  get 'dashboard' => 'dashboards#index'
  get '/payout_method' => 'users#payout'
  get 'sales', to: 'transactions#sales'
  get 'purchases', to: 'transactions#purchases'
  resources :pricing, only:[:index]

  get '/search', to: 'searches#result'

  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
  match '/conversations', to: 'conversations#index', via: 'get'

  get 'genre/:tag', to: 'tags#show', as: :tag
  get 'genres', to: 'tags#index'

  get 'generators', to: 'ipsums#show'
  get 'apocalypse_ipsum', to: 'ipsums#apocalypse'
  get 'fantasy_ipsum', to: 'ipsums#fantasy'
  get 'hobbies_ipsum', to: 'ipsums#hobbies'
  get 'horror_ipsum', to: 'ipsums#horror'
  get 'military_ipsum', to: 'ipsums#military'
  get 'modern_ipsum', to: 'ipsums#modern'
  get 'names_gen', to: 'ipsums#names'
  get 'nature_ipsum', to: 'ipsums#nature'
  get 'scifi_ipsum', to: 'ipsums#scifi'
  get 'western_ipsum', to: 'ipsums#western'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
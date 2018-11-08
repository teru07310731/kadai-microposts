Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'favorites/create'
  get 'favorites/destroy'
  
  get 'relationships/create'
  get 'relationships/destroy'


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      get :favorites
    end
  collection do
      get :search
    end
  end

  resources :tweets, only: [:create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
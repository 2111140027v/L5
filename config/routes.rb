Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :users
  resources :tweets
  resources :likes, only: [:create, :destroy]
  
  root 'tweets#index'
  
  #get 'top/main'
  #get 'top/login'
  #get 'top/logout'
  #get 'tweets/index'
  #get 'tweets/new'
  #get 'tweets/create'
  #get 'tweets/destroy'
  #get 'tweets/show'
  #get 'tweets/edit'
  #get 'tweets/update'
  #get 'index/new'
  #get 'index/create'
  #get 'index/destroy'
  #get 'index/show'
  #get 'index/edit'
  #get 'index/update'
  #resources :users
  #resources :users
  #root 'users#index'
  
  #get 'users/index'
  #get 'users/new'
  #post 'users/create'
  #delete 'users/:id', to: 'users#destroy'
  
  #resources :tweets
  
  #post 'top/login'
  #get 'top/logout'
  
  #resources :top
  #resources :likes
  
  
  #resources :users, :tweets, :top, :likes
  #root 'users#index'
  
  #get 'users/index'
  #get 'users/new'
  #post 'users/create'
  #delete 'users/:id', to: 'users#destroy'
  
  #get 'tweets/index'
  #get 'tweets/new'
  #post 'tweets/create'
  #delete 'tweets/:id', to: 'tweets#destroy'
  
  #get 'tweets/show'
  #get 'tweets/edit'
  #post 'tweets/update'
  
  #get 'top/main'
  #get 'top/login'
  #get 'top/logout'
  
  #get 'likes/create'
  #get 'likes/destroy'
  #get 'users/:id', to: 'users#show', as: :users
   
   
   
   
  #get 'users/index'
  #resources :users
  
  #get 'tweets/index'
  #resources :tweets
  
  #root 'top#main'
  #get 'top/login_form'
  #post 'top/login'
  #get 'top/logout'
  
  #resources :likes
  #get 'users/:id', to: 'users#show', as: :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
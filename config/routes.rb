Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/new'
  resources:users
  resources:tweets
  root 'tweets#index'
end

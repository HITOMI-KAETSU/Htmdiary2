Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resource :like, only: [:create,:destroy]
  end
  root 'articles#index'
  get '/users' =>'users#index'
  get '/users/:id' => 'users#show'
end
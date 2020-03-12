Rails.application.routes.draw do
  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'api/v1/photos#index'

  namespace :api do
    namespace :v1 do
      resources :photos
      # post 'users/login' => 'users#login'
      # get 'users/login' => 'users#login'
      # # resources :users, only: [:show]
      # resources :games
      # resources :sessions, only: [:create, :destroy]
      # root to:'static#home'
    end
  end

end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users/current_user', to: 'users#return_current_user'
      resources :users, only: [:create, :index, :show]

      post '/users/login', to: 'sessions#create'

      get '/home', to: 'homes#get_home'
      patch '/add_home/:id', to: 'homes#add_to_home'
      patch '/remove_home', to: 'homes#remove_home'
      resources :homes, only: [:create, :index, :update]

      get '/find_bill', to: 'bills#find_bill'
      resources :bills, only: [:create, :index, :show]

      resources :transactions, only: [:create, :index, :show, :destroy]

      resources :messages, only: [:index, :create]
      
      resources :events, only: [:index, :create]
    end
  end
end

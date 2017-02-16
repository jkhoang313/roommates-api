Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/users/current_user', to: 'users#return_current_user'
      resources :users, only: [:create, :index, :show]
      
      post '/users/login', to: 'sessions#create'

      resources :homes, only: [:create, :index]

      resources :bills, only: [:create, :index, :show]
      get '/find_bill', to: 'bills#find_bill'

      resources :transactions, only: [:create, :index, :show]
    end
  end
end

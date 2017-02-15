Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/users/current_user', to: 'users#return_current_user'
      resources :users, only: [:index, :create, :show]
      post '/users/login', to: 'sessions#create'
      resources :homes, only: [:create]
    end
  end
end

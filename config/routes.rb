Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'user/index'
      get 'user/create'
      resources :users
      resources :blog, only: [:index, :create, :destroy, :update]
      resources :program, only: [:index, :create, :show, :destroy]
      resources :services
      resources :contact, only: [:create]
      resources :about, only: [:index, :create, :show]
      resources :home, only: [:index, :create, :show]
      post '/auth/login', to: 'authentication#login'
      get '/*a', to: 'application#not_found'
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check

end

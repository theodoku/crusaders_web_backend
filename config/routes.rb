Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index create destroy] do
        resources :comments, only: [:create]
        resources :people, only: [:index, :show]
      end
      
      post 'register', to: 'users#create'
      post 'login', to: 'authentication#create'
      post '/authentication', to: 'authentication#create'
    end
  end
end

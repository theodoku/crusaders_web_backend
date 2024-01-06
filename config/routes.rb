Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index create destroy] do
        resources :comments, only: [:create]
        resources :people, only: [:show]
      end
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
    end
  end
end


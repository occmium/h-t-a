Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # resources :messages
  # resources :chatrooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      mount ActionCable.server => '/cable'
    end
  end
  
  scope :api do
    scope :v1 do
      post "/graphql", to: "graphql#execute"
      get "/chatrooms", to: "chatrooms#index"
    end
  end
end

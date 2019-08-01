Rails.application.routes.draw do
  resources :ratings
  resources :login, only: [:new, :create]
  resources :workspace_login, only: [:new, :create]
  resources :workspaces
  resources :reviews
  resources :users

   get "/login", to: 'login#new', as: "login"
   post "/login", to: 'login#create'
 
   delete "/logout", to: 'login#destroy'

  root "login#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'login/new'
  get 'login/create'
  resources :workspaces
  resources :reviews
  resources :users

  root "login#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

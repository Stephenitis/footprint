Footprint::Application.routes.draw do
  match 'login' => 'sessions#new', :as => "login"
  resources :users, :only => [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end

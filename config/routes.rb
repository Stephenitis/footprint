Footprint::Application.routes.draw do


  get '/auth/:provider/callback', to: 'oauths#index'
  # post '/auth/:provider/callback', to: 'oauths#index'

  # resources :oauth, only: [:index]

  # resources :sessions, only: [:create]
  # get "/printheader" => "controller#action"

  # root :to => 'welcome#index'

  root :to => 'user#login'

  match 'login' => 'sessions#new', :as => "login"
  resources :users, :only => [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

end

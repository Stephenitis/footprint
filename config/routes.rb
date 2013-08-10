Footprint::Application.routes.draw do



  get '/auth/:provider/callback', to: 'users#oauth'
  post '/auth/:provider/callback', to: 'users#oauth'

  # resources :oauth, only: [:index]

  # resources :sessions, only: [:create]
  # get "/printheader" => "controller#action"

  # root :to => 'welcome#index'

  root :to => 'oauths#index'

  match 'login' => 'sessions#new', :as => "login"
  resources :users, :only => [:new, :create] do
    member do
      post 'oauth'
    end
  end
  resources :sessions, only: [:new, :create, :destroy]

end

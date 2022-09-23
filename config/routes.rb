Rails.application.routes.draw do
  resources :posts
  get "api/posts", to: "posts#index", defaults: { format: :json }
  get "about", to: "pages#about"
  get 'home', to: "pages#home"

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/my_network_admin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  root "pages#home"
end

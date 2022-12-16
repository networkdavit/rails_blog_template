Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  resources :posts
  get "api/posts", to: "posts#index", defaults: { format: :json }
  get "about", to: "pages#about"
  get 'home', to: "pages#home"

  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
  post '/my_network_admin' => 'sessions#create'
  get '/my_network_admin' => 'sessions#new'
  # post '/signin' => 'sessions#create'
  get '/my_network_admin_sign_out' => 'sessions#destroy'
  root "pages#home"

  # match '*unmatched', to: 'application#not_found_method', via: :all
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  
end

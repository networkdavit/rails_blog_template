Rails.application.routes.draw do
  resources :posts
  get "api/posts", to: "posts#index", defaults: { format: :json }
  get "about", to: "pages#about"
  root "pages#home"
end

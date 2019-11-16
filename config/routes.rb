Rails.application.routes.draw do
  
  root to: "static_pages#index"
  resources :users
  resources :businesses
  resources :leads

  post "/cities/new", to: "cities#link_city"
  patch "/cities/new", to: "cities#unlink_city"
  resources :cities

  post "/services/new", to: "services#link_business"
  patch "/services/new", to: "services#unlink_business"
  resources :services

  get "/businesses/:business_id/:service_id/:city_id", to: "static_pages#page"

  # Routes for Google authentication
  # /auth/google_oauth2 <-- sign in middleware
  # and to log out
  get "auth/:provider/callback", to: "sessions#googleAuth"
  get "auth/failure", to: redirect("/")
  get "/logout", to: "sessions#destroy"

  # static pages 
  
end

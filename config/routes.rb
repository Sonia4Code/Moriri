Rails.application.routes.draw do
  post "salons/search" => "salons#search"
  get "salons/search" => "salons#search"

  root 'welcome#index'


  
	get "/login" => "sessions#new"
	post "/login" => "sessions#create"
	get "/logout" => "sessions#destroy"

	get "/profile" => "users#profile", as: "profile"

	resources :users

  get "/profile/edit" => "users#edit", as: "edit_profile"


  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  get "/auth/facebook" => "sessions#create_from_omniauth"


  resources :salons
end

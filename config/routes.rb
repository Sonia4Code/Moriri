Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

	post "salons/search" => "salons#search"
  # get "salons/search"

  
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

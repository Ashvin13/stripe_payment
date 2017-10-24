Rails.application.routes.draw do
  apipie
  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, constraints: { format: 'json' } do
  	namespace :v1 do
  		# get "/recipes/:id" => "recipe#show"
  		resources :recipes
  	end
  end

  resources :charges

  root to: "charges#new"
end

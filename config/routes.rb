Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get "restaurants/new", to: "restaurants#new", as: :restaurant_new
  #post "restaurants", to: "restaurants#create"

  #get "restaurants", to: "restaurants#index"
  #get "restaurants/:id", to: "restaurants#show", as: :restaurant


  resources :restaurants, only: [:new, :show, :index, :create] do
    collection do
    end

    member do
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:show]
end

Rails.application.routes.draw do
  # get 'lists/index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "lists", to: "lists#index"
  # get "lists/:id", to: "lists#show"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :index]
  end
  resources :bookmarks, only: [:destroy]
end

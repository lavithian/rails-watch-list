Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "lists#index"
  resources :lists do
    resources :bookmarks, only: [:index, :new]
  end

  resources :bookmarks, only: [:index, :delete]
#   do
#     resources :reviews, only: [:index, :new, :create]
#   end
#   resources :reviews, only: [:show, :edit, :update, :destroy]
end

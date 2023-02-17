Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'lists#index'
  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # get '/lists', to: 'lists#index', as: :lists
  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: :new_list_bookmark
  # post 'lists/:id/bookmarks', to: 'bookmarks#create', as: :bookmarks
  # delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :bookmark
end

Rails.application.routes.draw do
  resources :articles do
     resources :comments, only: [:create]  # REST
  end

  # resources :articles
  # resources :comments, only: [:create]  # REST
  # post '/comments', to: 'comments#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end

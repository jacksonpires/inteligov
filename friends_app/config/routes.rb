Rails.application.routes.draw do
  get 'welcome/index'
  get '/inicio', to: 'welcome#index'
  get 'welcome/informations'   #, to: 'welcome#show'
  get 'info', to:'welcome#informations'
  get 'info/:name', to:'welcome#informations'

  resources :friends # cria 8 rodas diferentes
  get '/amigos', to: 'friends#index'

  # get '/friends', to: 'friends#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end

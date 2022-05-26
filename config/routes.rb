Rails.application.routes.draw do
  get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "home/top" => "home#top"
  get "/" => "home#top"
  #ログイン・ログアウト系
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get '/register', to: 'sessions#register'
  post '/register', to: 'sessions#createuser'
end

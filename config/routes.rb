Rails.application.routes.draw do
  get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#top"
  get "home/top" => "home#top"
  get "/" => "home#top"

  #ログイン・ログアウト系
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get '/register', to: 'sessions#register'
  post '/register', to: 'sessions#createuser'

  #質問系
  get '/questions/create', to: 'questions#new'
  post '/questions/create', to: 'questions#create'
  get '/questions/complete', to: 'questions#complete'
  get '/questions/list', to: 'questions#list'
  get '/questions/answer', to: 'questions#answer'
  post '/questions/answer', to: 'questions#answer_crate'
end

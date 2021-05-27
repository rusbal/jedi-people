Rails.application.routes.draw do
  resources :people
  get '/don', to: 'pages#don'
  get '/jedi', to: 'pages#jedi'
  get '/raymond', to: 'pages#raymond'

  get '/players', to: 'pages#players'
end

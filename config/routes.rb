Rails.application.routes.draw do
  resources :people
  get '/don', to: 'pages#don'
end

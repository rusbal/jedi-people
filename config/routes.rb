Rails.application.routes.draw do
  resources :people

  get '/jedi', to: 'pages#jedi'
end

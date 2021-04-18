Rails.application.routes.draw do
  resources :people

  get '/raymond', to: 'pages#raymond'
end

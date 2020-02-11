Rails.application.routes.draw do
  #home
  root to: 'gossips#index'

  #pages menu
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'

  #pages gossips
  resources:gossips, except: [:destroy]

  #pages users
  get '/user/:id', to: 'pages#user', as: "user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

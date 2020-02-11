Rails.application.routes.draw do
  #home
  root to: 'pages#welcome'
  get '/welcome', to: 'pages#welcome'
  #home personnalisée
  get '/welcome/:first_name', to:'pages#welcome'

  #pages menu
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'

  #pages gossips
  get '/gossip/:id', to: 'pages#gossip', as: "gossip"

  #pages users
  get '/user/:id', to: 'pages#user', as: "user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

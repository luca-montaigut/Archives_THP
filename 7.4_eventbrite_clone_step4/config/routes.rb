Rails.application.routes.draw do
  root to: 'events#index'
  devise_for :users
  resources :users do
    resources :avatars, only: [:create]
  end
  resources :events do
    resources :attendances, only: [:create]
  end
  
end

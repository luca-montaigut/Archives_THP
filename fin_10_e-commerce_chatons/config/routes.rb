Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
  devise_for :users
  resources :items, path: 'photo_de_chat' do 
    resources :rating, only: [:update]
    resources :comments, only: [:create, :edit, :update, :destroy], path: 'mon_commentaire'
  end
  resources :carts, only: [:show, :update, :destroy], path: 'mon_panier'
  resources :users, only: [:show, :update, :edit], path: 'mon_profil'
  resources :charges, only: [:new, :create], path: 'paiement'

  scope 'admin', module: 'admin', as: 'admin' do
    resources :dashboard, only: [:index]
    resources :users
    resources :orders
    resources :items
  end
end

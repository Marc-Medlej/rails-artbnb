Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  get 'profile', to: 'pages#profile'
  resources :artworks, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [  :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#banner'
  resources :trips do
    resources :bookings, only: [:create]
    resources :saved_trips, only: [:create, :destroy]
    resources :activities, only: [:new, :create]
  end

  get '/home', to: "pages#home", as: :home
  get '/profile', to: "pages#profile"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

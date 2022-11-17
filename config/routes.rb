Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :homestays, only: %i[index show new create] do
    resources :bookings, only: :create
  end
  namespace :owner do
    resources :bookings, only: :index
  end
  resources :bookings, only: :index
end

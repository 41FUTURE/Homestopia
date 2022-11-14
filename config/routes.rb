Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/home", to: "homestays#home"
  get "/homestays", to: "homestays#index", as: :homestays
  get "/homestays/:id", to: "homestays#show", as: :homestay
  post "/homestays/:shomestay_id/bookings", to: "bookings#create"
  get "/bookings", to: "bookings#index", as: :bookings
  # Defines the root path route ("/")
  # root "articles#index"
end

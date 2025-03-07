Rails.application.routes.draw do
  resources :pumps

  get "gas_stations/search", to: "gas_stations#search"
  resources :gas_stations

  root to: "gas_stations#index"

end

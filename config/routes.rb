Rails.application.routes.draw do
  root "places#index"
  resources :places, only: %i[index show]
end

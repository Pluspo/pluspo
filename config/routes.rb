Rails.application.routes.draw do
  root "places#index"
  resources :places, only: %i[index show]
  get '/terms', to: 'static_pages#terms'
end

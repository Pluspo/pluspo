Rails.application.routes.draw do
  root "places#index"
  resources :places, only: %i[index show]

  get '/top', to: 'static_pages#top'
  get '/terms', to: 'static_pages#terms'
  get '/privacy_policy', to: 'static_pages#privacy_policy'
  get '/guide', to: 'static_pages#guide'
  get '/faq', to: 'static_pages#faq'
end

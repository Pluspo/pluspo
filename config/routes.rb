Rails.application.routes.draw do
  root "places#index"
  resources :places, only: %i[index show]

  # get '/top', to: 'static_pages#top' # TODO: TOPページの追加
  get '/terms', to: 'static_pages#terms'
  # get '/privacy_policy', to: 'static_pages#privacy_policy' # TODO: プライバシーポリシーページの追加
  # get '/guide', to: 'static_pages#guide' # TODO: ガイドページの追加
  # get '/faq', to: 'static_pages#faq' # TODO: 問い合わせページの追加
end

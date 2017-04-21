Rails.application.routes.draw do
  get 'connect', to: 'connect#index'

  post 'connect', to: 'connect#mail'

  devise_for :influencers
  devise_for :users

  resources :photographs do
    resources :auctions, only: [ :create ] do
      resources :bids, only: [ :create ]
    end
    member do
      put :transfer
    end
    resources :charges do
      get 'confirmation', to: 'charges#confirmation'
    end
  end

  resources :users
  resources :influencers_profile

  get 'contact/contact_page'
  get 'lists/influencer_list'
  get 'lists/photo_list'
  get 'influencers_profile/show'
  get 'pages/about'
  get 'pages/charity'
  get 'pages/admin_dashboard'
  get 'pages/list_influencer'
  get 'pages/list_photo'
  get 'pages/list_user'

  root 'pages#home'
  get '/callback' => 'pages#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

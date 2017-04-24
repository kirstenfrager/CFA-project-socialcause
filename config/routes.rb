Rails.application.routes.draw do
  get 'connect', to: 'connect#index'

  post 'connect', to: 'connect#mail'

  devise_for :users
  devise_for :influencers, :controllers => { :omniauth_callbacks => "influencers/omniauth_callbacks" } do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_influencer_session
  end

  resources :photographs do
    resources :auctions, only: [ :create ] do
      resources :bids, only: [ :create ]
    end
    member do
      post '/action', to: 'photographs#action'
      put :transfer
      resources :charges do
       member do
           get 'confirmation', to: 'charges#confirmation'
         end
       end
    end
  end

  resources :users
  resources :influencers_profile

  resources :conversations do
    resources :messages
  end

  get 'contact/contact_page'
  get 'lists/influencer_list'
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

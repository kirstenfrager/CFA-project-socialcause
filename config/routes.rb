Rails.application.routes.draw do
  devise_for :influencers
  devise_for :users

  resources :photographs
  resources :users
  resources :influencers_profile

  get 'contact/contact_page'

  get 'lists/influencer_list'

  get 'lists/photo_list'

  get 'influencers_profile/show'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

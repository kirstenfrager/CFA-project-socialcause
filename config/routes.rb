Rails.application.routes.draw do
  get 'influencers_profile/show'

  root 'pages#home'

  # get 'users/show'


  devise_for :influencers
  devise_for :users

  resources :users
  resources :influencers_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

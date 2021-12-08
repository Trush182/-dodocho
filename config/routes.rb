Rails.application.routes.draw do
  resources :components, only: [:index]

  devise_for :users

  root to: 'pages#home'

  resources :components

  resources :rooms, only: [:index, :show]

  namespace :host do
    root to: 'pages#home'

    resources :housing_requests, only: [:index] do
      member do
        patch :decline
        patch :accept
      end
    end
    resources :rooms, only: [:new, :create]

    resource :offered_equipments, only: [:edit, :update]
    resource :night_proposal, only: [:edit, :update]

  end

  namespace :seeker do
    resources :housing_requests, only: [:index, :show]
    resources :rooms, only: [] do
      resources :housing_requests, only: [:create]
    end

    resource :offered_services, only: [:edit, :update]
    resource :search_infos, only: [:edit, :update]
  end
end

Rails.application.routes.draw do
  get 'components/index'
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
    resources :rooms, only: [:new, :create, :edit, :update]
  end

  namespace :seeker do
    resources :housing_requests, only: [:index]
    resources :rooms, only: [] do
      resources :housing_requests, only: [:index, :create]
    end

    resource :offered_services, only: [:edit, :update]
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :favorites, only:[:new, :create, :update, :destroy, :index, :show]
  get 'dashboard', to: 'dashboards#dashboard'
  get 'dashboard/agenda', to: 'dashboards#agenda'
  get 'dashboard/renting', to: 'dashboards#renting'

  resources :properties, only:[:new, :create, :update, :destroy, :index, :show] do
    resources :parts, only:[:new, :create, :update, :destroy]
    resources :bookings, only: [:create, :new, :update, :destroy, :index, :show]
  end
end

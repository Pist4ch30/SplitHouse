Rails.application.routes.draw do
  get 'parts/new'
  get 'parts/create'
  get 'parts/show'
  get 'parts/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:create, :new, :update, :destroy, :index, :show]
  resources :favorites, only:[:new, :create, :update, :destroy, :index, :show]
  resources :properties, only:[:new, :create, :update, :destroy, :index, :show]

end

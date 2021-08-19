Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/plants', to: 'plants#index'
  get '/dashboards', to: 'user#dashboard'
  # get '/plants/search', to: 'plants#search'
  get '/plants/filter', to: 'plants#filter'
  patch '/pots', to: 'pots#picture'



  resources :plants, only: [:index, :show]
  resources :pots, only: [:index, :new, :create, :show, :destroy, :edit, :update, :water]
  resources :chatrooms, only:[:index, :show] do
    resources :messages, only: [:create]
  end

end

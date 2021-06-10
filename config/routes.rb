Rails.application.routes.draw do
  
  get "/campers", to: 'campers#index'
  get "/campers/:id", to: 'campers#show'
  post "/campers/:id", to 'campers#create'

  resources :activities, only: [:index, :delete]

  resources :signups, only: [:create]

end

Rails.application.routes.draw do
  resources :users
  get 'cities/:state', to: 'application#cities'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

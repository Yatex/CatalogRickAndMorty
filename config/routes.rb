Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "characters#index"

  resources :characters
  get "search", to: "characters#search"
  post "refresh", to: "characters#refresh", as: 'refresh'

end

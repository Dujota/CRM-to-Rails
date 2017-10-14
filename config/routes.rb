Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :contacts
  # Shorthand that creates routes for our class. check the rotues in the command by rails routes
end

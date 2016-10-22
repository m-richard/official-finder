Rails.application.routes.draw do
  root 'addresses#create'

  resources :addresses
end

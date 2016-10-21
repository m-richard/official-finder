Rails.application.routes.draw do
  root 'addresses#create'

  resources :districts do
    resources :addresses
  end
end

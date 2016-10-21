Rails.application.routes.draw do
  root 'addresses#index'

  resources :districts do
    resources :addresses
  end

  namespace :api do
    namespace :v1 do
      resources :districts
    end
  end
end

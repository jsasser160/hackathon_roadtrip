Rails.application.routes.draw do
  roots 'trips#index'

  resources :trips do
    resources :locations
  end

  resources :locations do
    resources :addresses
  end
end

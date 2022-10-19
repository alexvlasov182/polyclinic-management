Rails.application.routes.draw do
  resources :doctors
  resources :patients

  root 'doctors#index'
end

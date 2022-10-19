Rails.application.routes.draw do
  devise_for :users
  resources :doctors
  resources :patients

  root 'doctors#index'
end

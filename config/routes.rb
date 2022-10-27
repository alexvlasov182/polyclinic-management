Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :doctors
  devise_for :users
end

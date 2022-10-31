Rails.application.routes.draw do


  devise_for :admin_users, controllers: {
    sessions: 'admin_users/sessions',
    passwords: 'admin_users/passwords',
    registrations: 'admin_users/registrations',
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }

  devise_for :doctors, controllers: {
    sessions: 'doctors/sessions',
    passwords: 'users/passwords',
    registrations: 'doctors/registrations',
  }

  # devise_for :users
  # devise_for :doctors
  # devise_for :admin_users
  root 'home#index'
end

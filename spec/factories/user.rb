# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'user_1@test.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end

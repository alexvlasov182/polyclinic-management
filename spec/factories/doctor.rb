# frozen_string_literal: true

FactoryBot.define do
  factory :doctor do
    name { 'Alex' }
    email { 'user_1@test.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end

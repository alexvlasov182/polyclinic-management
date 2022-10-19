# frozen_string_literal: true

FactoryBot.define do
  factory :patient do
    first_name { 'Alex' }
    last_name { 'Vlasov' }
    city { 'Zürich' }
    address { '8088 Lone Wolf Trail' }
    email { 'user_1@test.com' }
    password { 'password' }
  end
end

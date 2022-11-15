FactoryBot.define do
  factory :prescriptions do
    prescript { Faker::Lorem.characters }
    appointment
  end
end

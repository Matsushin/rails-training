FactoryBot.define do
  factory :task do
    association :category
    association :user
    title { Faker::Lorem.words }
    body { Faker::Lorem.sentence }
  end
end
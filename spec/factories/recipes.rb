FactoryBot.define do
  factory :recipe do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    user_id {nil}
  end
end

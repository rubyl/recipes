FactoryBot.define do
  factory :recipe_step do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    recipe_id {nil}
  end
end

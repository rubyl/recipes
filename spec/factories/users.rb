FactoryBot.define do
  factory :user do
    username { Faker::Movies::StarWars.character }
    password { Faker::Movies::StarWars.planet }
  end
end

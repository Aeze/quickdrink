FactoryGirl.define do
  factory :ingredient do
    name { Faker::Lorem.characters(rand(25)+1) }
  end
end
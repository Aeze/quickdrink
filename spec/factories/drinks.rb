require 'faker'

FactoryGirl.define do
  factory :drink do
    name { Faker::Lorem.characters(rand(25)+1) }
  end
end
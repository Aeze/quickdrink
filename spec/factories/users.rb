require 'faker'

FactoryGirl.define do
  factory :user do
    email 'quickdrink@asdf.com'
    password 'quickdrinktest'
  end
end
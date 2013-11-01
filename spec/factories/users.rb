# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Admin"
    email "admin@berkeley.edu"
    password "admin"
  end
end

FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 1) }
    email                 { Faker::Internet.free_email }
    password              { 'aaaaa1' }
    password_confirmation { 'aaaaa1' }
  end
end

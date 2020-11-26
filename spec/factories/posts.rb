FactoryBot.define do
  factory :post do
    title   {Faker::Lorem.sentence}
    text    {Faker::Lorem.sentence}
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

FactoryBot.define do
  factory :user do
    name { Faker::Name.first_name }
    mobile { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.safe_email }
    password_digest { Faker::Internet.password(min_length: 8) }
    address { Faker::Address.country }
  end
end

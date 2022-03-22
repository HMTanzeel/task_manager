FactoryBot.define do
  factory :client do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    website { Faker::Internet.url }
    source { 2 }
    email { Faker::Internet.safe_email }
    location { Faker::Address.full_address }
  end
end

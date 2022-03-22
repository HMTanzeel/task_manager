FactoryBot.define do
  factory :client do
    first_name { "MyString" }
    last_name { "MyString" }
    website { "MyString" }
    source { 1 }
    email { "MyString" }
    location { "MyString" }
  end
end

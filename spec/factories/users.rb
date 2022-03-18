FactoryBot.define do
  factory :user do
    name { 'Tanzeel' }
    mobile { '1234' }
    email { 'a1@g.com' }
    password_digest { '12345' }
    address { 'qwertyuiop' }
  end
end

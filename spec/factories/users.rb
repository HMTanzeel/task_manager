FactoryBot.define do
  factory :user do
    id { 1 }
    name { 'Tanzeel' }
    mobile { '1234' }
    email { 'mtanzeel6633@gmail.com' }
    password_digest { 'Password1234' }
    address { 'Lahore, Pakistan' }
  end
end

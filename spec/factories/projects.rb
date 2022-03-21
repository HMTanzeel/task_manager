FactoryBot.define do
  factory :project do
    title { Faker::Book.title }
    description { Faker::Book.title }
    active { Faker::Boolean.boolean }
    started_at { Faker::Date.backward(days: 14) }
    close_at { Faker::Date.forward(days: 14) }
    project_type { 1 }
    user
  end
end

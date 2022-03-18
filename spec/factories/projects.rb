FactoryBot.define do
  factory :project do
    title { 'E-Commerece' }
    description { 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' }
    active { false }
    started_at { '2022-03-11 12:03:27' }
    close_at { '2022-03-11 12:03:27' }
    project_type { 1 }
    user_id { 1 }
  end
end

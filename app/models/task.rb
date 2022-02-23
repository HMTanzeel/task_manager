class Task < ApplicationRecord
  belongs_to :user
  validates :description, :started_at, presence: true
end

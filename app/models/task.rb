class Task < ApplicationRecord
  belongs_to :user
  validates :title, :description, :started_at, presence: true
end

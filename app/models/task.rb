class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  validates :title, :description, :started_at, presence: true
end

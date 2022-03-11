class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :title, presence: true
  enum project_type: [:one_time, :support]
end

class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  enum project_type: [:one_time, :support]
end

class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
  enum :role, [:admin, :employee]
end

class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :tasks
  has_secure_password
  validates :email, presence: true, uniqueness: true
  enum :role, [:admin, :employee]
end

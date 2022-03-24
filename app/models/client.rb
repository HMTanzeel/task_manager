class Client < ApplicationRecord
  has_many :projects
  validates :first_name, :last_name, :website, :email, presence: true
  enum source: [:linkedIn, :facebook, :personal_referral]
end

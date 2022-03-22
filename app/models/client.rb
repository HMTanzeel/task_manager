class Client < ApplicationRecord
  has_many :projects
  enum marketing_campaign: [:linkedIn, :facebook, :personal_referral]
end

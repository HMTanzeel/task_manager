require 'rails_helper'

RSpec.describe User, type: :model do
  it "must create a user via factory bot data" do
    user1 = FactoryBot.create(:user)
    expect(user1).to be_valid
  end
end

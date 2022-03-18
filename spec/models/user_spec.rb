require 'rails_helper'

RSpec.describe User, type: :model do
  it "create a user" do
    user1 = FactoryBot.create(:user)
    expect(user1).to be_valid
  end

  it "valid if name is equal" do
    user1 = FactoryBot.create(:user)
    expect(user1.name).to eq('Tanzeel')
  end

  it "valid if id is equal" do
    user1 = FactoryBot.create(:user)
    expect(user1.id).to eq(1)
  end
end

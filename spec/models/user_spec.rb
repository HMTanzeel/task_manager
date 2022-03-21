require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:mobile).of_type(:integer) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:password_digest).of_type(:string) }
  it { should have_db_column(:address).of_type(:string) }
  it { should have_many(:projects) }

  it "valid if creates a user" do
    expect(create(:user)).to be_valid
  end

  it "valid if name is available" do
    user1 = create(:user)
    expect(user1.name).to be_present
  end

  it "valid if id is matched" do
    user1 = create(:user)
    uid = user1.id
    expect(user1.id).to eq(uid)
  end
end

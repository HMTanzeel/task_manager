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
    expect(create(:user).name).to be_present
  end

  it "valid if email is available" do
    expect(create(:user).email).to be_present
  end
end

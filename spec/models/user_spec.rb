require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:mobile).of_type(:integer) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:password_digest).of_type(:string) }
  it { should have_db_column(:address).of_type(:string) }
  it { should have_many(:projects) }

  it "not valid if not creates a user" do
    expect(create(:user ,email: nil)).to be_valid
  end

  it "not valid if email is registered already" do
    mail = create(:user).email
    expect(create(:user, email: mail)).to be_valid
  end
end

require 'rails_helper'

RSpec.describe Client, type: :model do
  it { should have_db_column(:first_name).of_type(:string) }
  it { should have_db_column(:last_name).of_type(:string) }
  it { should have_db_column(:website).of_type(:string) }
  it { should have_db_column(:source).of_type(:integer) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:location).of_type(:string) }
  it { should have_many(:projects) }

  it "not valid if email not is available" do
    expect(create(:client, email: nil).email).to be_present
  end

  it "not valid if first name is not available" do
    expect(create(:client, first_name: nil).first_name).to be_present
  end

  it "not valid if last name is not available" do
    expect(create(:client, last_name: nil).last_name).to be_present
  end

  it "not valid if website URL is not available" do
    expect(create(:client, website: nil).website).to be_present
  end
end

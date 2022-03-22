require 'rails_helper'

RSpec.describe Client, type: :model do
  it { should have_db_column(:first_name).of_type(:string) }
  it { should have_db_column(:last_name).of_type(:string) }
  it { should have_db_column(:website).of_type(:string) }
  it { should have_db_column(:source).of_type(:integer) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:location).of_type(:string) }
  it { should have_many(:projects) }

  it "valid if email is available" do
    expect(create(:client).email).present?
  end

  it "valid if first name is available" do
    expect(create(:client).first_name).present?
  end

  it "valid if last name is available" do
    expect(create(:client).last_name).present?
  end

  it "valid if website URL is available" do
    expect(create(:client).website).present?
  end
end

require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:description).of_type(:string) }
  it { should have_db_column(:active).of_type(:boolean) }
  it { should have_db_column(:project_type).of_type(:integer) }
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:started_at).of_type(:datetime) }
  it { should have_db_column(:close_at).of_type(:datetime) }
  it { should belong_to(:user) }

  it "not valid if title is not available" do
    user = create(:user)
    client = create(:client)
    expect(create(:project, title: nil, user: user, client: client).title).to be_present
  end
end

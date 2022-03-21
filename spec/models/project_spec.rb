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

  it "valid if title is available" do
    user = create(:user)
    project = create(:project, user: user)
    expect(project.title).present?
  end
end

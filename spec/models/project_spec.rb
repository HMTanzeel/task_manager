require 'rails_helper'

RSpec.describe Project, type: :model do
  it "valid if title is available" do
    user = FactoryBot.create(:user)
    project = FactoryBot.create(:project)
    project.user = user
    expect(project.title).present?
  end
end

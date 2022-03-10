require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "valid with user and if title is not empty" do
    project = Project.new(title: "any")
    assert_empty project.errors
  end
  
  # test "valid if active is equal to true or false" do
  #   project = Project.new(active: false)
  #   project.valid?
  #   assert_not project.errors[:active].empty?
  # end

  # test "invalid if project_type is greater than 1" do
  #   project = Project.new(project_type: 0)
  #   project.valid?
  #   assert_empty project.errors[:project_type].empty?
  # end
end

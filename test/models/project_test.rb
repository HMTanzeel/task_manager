require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "valid if user and title is available" do
    user = User.create(name: "Ali", mobile: "0900", email: "a2@g.com", password_digest: "123", address: "ajhsncjfacnaje")
    project = Project.new(title: "any")
    project.user = user
    assert project.valid?

    assert_empty project.errors
  end

  test "not valid if user is available and title is empty" do
    user = User.create(name: "Ali", mobile: "0900", email: "a2@g.com", password_digest: "123", address: "ajhsncjfacnaje")
    project = Project.new
    project.user = user
    assert project.valid?

    assert_empty project.errors
  end

  test "not valid if title and user is not available" do
    user = User.create
    project = Project.new
    project.user = user
    assert project.valid?

    assert_empty project.errors
  end

  test "find title of project" do
    assert_equal "E-Commerece", projects(:one).title
  end

  test "find description of project" do
    assert_equal "Home,About,Contact,Details", projects(:two).description
  end
  
end

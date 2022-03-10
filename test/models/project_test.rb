require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "valid with user" do
    user = User.create(name: "Ali", mobile: "0900", email: "a2@g.com", password_digest: "123", address: "ajhsncjfacnaje")
    assert user.valid?

    assert_empty user.errors
  end

  test "invalid without user" do
    user = User.create()
    assert user.valid?

    assert_empty user.errors
  end

  test "valid with user and if title is not empty" do
    user = User.create(name: "Ali", mobile: "0900", email: "a2@g.com", password_digest: "123", address: "ajhsncjfacnaje")
    project = Project.new(title: "any")
    project.user = user
    assert project.valid?

    assert_empty project.errors
  end

  test "invalid with user and if title is empty" do
    user = User.create(name: "Ali", mobile: "0900", email: "a2@g.com", password_digest: "123", address: "ajhsncjfacnaje")
    project = Project.new
    project.user = user
    assert project.valid?

    assert_empty project.errors
  end

  test "invalid if title and user is not available" do
    user = User.create
    project = Project.new
    project.user = user
    assert project.valid?

    assert_empty project.errors
  end
end

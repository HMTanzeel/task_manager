require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "check user one existance" do
    assert users(:one)
  end

  test "check user two existance by ID" do
    assert users(:two).id
  end

  test "find password of the user one" do
    assert_equal "12345", users(:one).password_digest
  end

  test "find password of the given user two" do
    assert_equal "Always", users(:two).password_digest
  end
end

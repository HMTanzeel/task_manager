require "test_helper"

class UserTest < ActiveSupport::TestCase
  fixtures :users
  
  test "check user one existance" do
    pass=[id: users(:one).id, name: users(:one).name, email: users(:one).email, password_digest: users(:one).password_digest, address: users(:one).address]
    user = User.create(pass)
    assert user.present?
  end

  test "check user two existance" do
    pass=[id: users(:two).id, name: users(:two).name, email: users(:two).email, password_digest: users(:two).password_digest, address: users(:two).address]
    user = User.create(pass)
    assert user.present?
  end
end

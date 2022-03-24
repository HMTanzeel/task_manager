require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    user = User.create(address: 'Lahore', email: "git@g.com", mobile: '0300', name: "john", password: "secret", password_confirmation: "secret")
    get user_projects_path(user.id)
    assert_response :success
  end
end

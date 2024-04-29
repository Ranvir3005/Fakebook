require "test_helper"

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get password_resets_index_url
    assert_response :success
  end
end
